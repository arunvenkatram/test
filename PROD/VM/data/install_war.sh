#!/bin/bash
#check if java has been installed
WAR_URL_GIT=git
if [[ -a /bin/java ]]
then
JAVA_PRESENT=yes
else
JAVA_PRESENT=no
fi
if [[ $JAVA_PRESENT == no ]]
then
yum install -y java-1.8.0-openjdk git
else
yum install -y git
fi
cd /opt
git clone $WAR_URL_GIT
rm -rf .git
java -jar companyNews.war