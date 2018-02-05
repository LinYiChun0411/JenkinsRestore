#!/bin/bash

#Save scipt and named JenkinsFullBackup.sh
#chmod +x JenkinsFullBackup

#Which path of your jenkins install
JENKINS_HOME=/var/lib/jenkins

#Which path of your backup file saved
JENKINS_BACKUP_HOME=/var/backup/jenkins

#Jenkins backup file ex:jenkins-backup.2017-11-24.tar.gz
JENKINS_BACKUP_FILE=jenkins-backup.$(date +"%Y-%m-%d").tar.gz

cd $JENKINS_HOME


#backup workspace need lot of diskspace, you can ignore like
# --exclude=./workspace

tar -zcvf $JENKINS_BACKUP_HOME/$JENKINS_BACKUP_FILE ./* \
	--exclude=.war
