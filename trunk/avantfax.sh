#!/bin/sh
#
# AvantFAX install script for Debian
# This script will configure /etc/sudoers and the HylaFAX hyla.conf, config, config.<devid> files
# Only run once
#

# CHECK IF HYLAFAX IS INSTALLED

echo "Checking for HylaFAX installation"

hyla=`which sendfax`
if [ "$?" -ne "0" ]; then
  echo You must install and configure HylaFAX first
  exit
fi

# The domain name for configuring email to fax
FAXDOMAIN="$HOST_AND_HOSTNAME";

# The installation directory for AvantFAX
INSTDIR=/var/www/html/avantfax

# The root directory where HylaFAX bin files are stored (typically, /usr or /usr/local)
HYLADIR=/usr

# HylaFAX $SPOOL directory (typically, /var/spool/hylafax or /var/spool/fax)
SPOOL=/var/spool/hylafax

# These are the database settings AvantFAX will create and use
USER="$AVANTFAX_USER";
PASS="$AVANTFAX_DB_PW";
DB="$AVANTFAX_DB";

# if the MySQL password for root is set, specify it here
ROOTMYSQLPWD="$MYSQL_ROOT_PW";

# The user and group which Apache runs as (typically, apache, wwwrun, nobody, etc...)
HTTPDUSER=asterisk	
HTTPDGROUP=asterisk

# INSTALL REQUIRED PACKAGES

echo "Installing required packages pear"

pear channel-update pear.php.net
pear upgrade-all
pear install Mail Net_SMTP Mail_mime MDB2_driver_mysql

echo "Installing AvantFAX and configuring HylaFAX"

## SETUP SMARTY
chmod 0770 avantfax/includes/templates/admin_theme/templates_c/ avantfax/includes/templates/admin_theme/cache/  avantfax/includes/templates/main_theme/templates_c/ avantfax/includes/templates/main_theme/cache/
chown $HTTPDUSER:$HTTPDGROUP avantfax/includes/templates/admin_theme/templates_c/ avantfax/includes/templates/admin_theme/cache/  avantfax/includes/templates/main_theme/templates_c/ avantfax/includes/templates/main_theme/cache/

chmod 0755 avantfax/includes/faxcover.php avantfax/includes/faxrcvd.php avantfax/includes/notify.php avantfax/tools/update_contacts.php avantfax/tools/faxcover.php avantfax/includes/avantfaxcron.php avantfax/includes/dynconf.php

# echo "AdminGroup: apache" >> /etc/hylafax/hfaxd.conf

echo "CoverCmd:		$INSTDIR/includes/faxcover.php" >> /etc/hylafax/sendfax.conf

# SETUP AVANTFAX JOBFMT

cat >> /etc/hylafax/hyla.conf << EOF

#
## JobFmt for AvantFAX
#
JobFmt: "%-3j %3i %1a %15o %40M %-12.12e %5P %5D %7z %.25s"

EOF

# INSTALL AVANTFAX

mv avantfax $INSTDIR
chown -R $HTTPDUSER.$HTTPDGROUP $INSTDIR
chmod -R 0770 $INSTDIR/tmp $INSTDIR/faxes
chown -R $HTTPDUSER.uucp $INSTDIR/tmp $INSTDIR/faxes

# IMPORT MYSQL DATABASE

/etc/init.d/mysql start

echo "## Creating AvantFAX MySQL database ##"
mysql --user=root --password=$ROOTMYSQLPWD -e "GRANT ALL ON $DB.* TO $USER@localhost IDENTIFIED BY \"$PASS\"" mysql
mysqladmin --default-character-set=utf8 --user=$USER --password=$PASS create $DB
mysql --user=$USER --password=$PASS $DB < create_tables.sql
mysqlshow --user=$USER --password=$PASS $DB

# SYMLINK AVANTFAX SCRIPTS

ln -s $INSTDIR/includes/faxrcvd.php $SPOOL/bin/faxrcvd.php
ln -s $INSTDIR/includes/dynconf.php $SPOOL/bin/dynconf.php
ln -s $INSTDIR/includes/notify.php  $SPOOL/bin/notify.php

# FIX FILEINFO

ln -s /usr/share/file/magic* /usr/share/misc/

# SETUP SUDO PERMISSIONS

echo "Setting up sudo"

cat /etc/sudoers | grep -v requiretty > /tmp/sudoers
echo "$HTTPDUSER ALL= NOPASSWD: /sbin/reboot, /sbin/halt, /usr/sbin/faxdeluser, /usr/sbin/faxadduser -u * -p * *" >> /tmp/sudoers
mv /etc/sudoers /etc/sudoers.orig
mv /tmp/sudoers /etc/sudoers
chmod 0440 /etc/sudoers
chown root.root  /etc/sudoers

# Make backup of HylaFAX configuration

mkdir /etc/hylafax/abackup
cp /etc/hylafax/config* /etc/hylafax/abackup/

# CONFIGURE MODEMS TO USE AVANTFAX

for i in `ls /etc/hylafax/config.*`; do
if [ "$i" != "/etc/hylafax/config.sav" ]; then
  if [ "$i" != "/etc/hylafax/config.devid" ]; then
    tilde=`echo $i | grep '~'`
    if [ "$?" -eq "1" ]; then
      if [ ! -L $i ]; then
cat >> $i << EOF

#
## AvantFAX
#
FaxRcvdCmd:     bin/faxrcvd.php
DynamicConfig:  bin/dynconf.php
UseJobTSI:      true

EOF
      fi
    fi
  fi
fi
done

cat >>  /etc/hylafax/config << EOF

#
## AvantFAX
#
NotifyCmd:      bin/notify.php

EOF

# ADD MODEMS TO DATABASE

for i in `ls /etc/hylafax/config.*`; do
if [ "$i" != "/etc/hylafax/config.sav" ]; then
  if [ "$i" != "/etc/hylafax/config.devid" ]; then
    tilde=`echo $i | grep '~'`
    if [ "$?" -eq "1" ]; then
      if [ -f $i ]; then
        modem=`echo $i | awk -F'/' '{print $6}' | awk -F'.' '{print $2}'`

        # ADD MODEMS TO AVANTFAX DATABASE
        mysql --user=$USER --password=$PASS -e "INSERT INTO Modems SET device='$modem', alias ='$modem'" $DB

        echo "Configuring $modem for AvantFAX"
      fi
    fi
  fi
fi
done

# ADD CRONTAB ENTRIES

echo "Setting up /etc/cron.d/avantfax"
printf "0 0 * * *\t$INSTDIR/includes/avantfaxcron.php -t 2\n" > /etc/cron.d/avantfax

#CONFIGURE LOCAL_CONFIG
cp /var/www/pub/debpbx/local_config.php  /var/www/html/avantfax/includes/local_config.php
sed -i "s/avantfax_user/${USER}/g" "/var/www/html/avantfax/includes/local_config.php"
sed -i "s/avantfax_pass/${PASS}/g" "/var/www/html/avantfax/includes/local_config.php"
sed -i "s/avantfax_db/${DB}/g" "/var/www/html/avantfax/includes/local_config.php"

echo -e "Installation complete\n\n"
# DONE #

