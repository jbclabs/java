#! /bin/sh
# jbc labs generic tomcat build script
# Requirements - A valid jar file exists within the code_dir
# Copies the jar file from the code_dir and copies it into /usr/src/app/

#Log everything in /src/build.log
logfile=/tmp/build.log
exec > $logfile 2>&1
set -x

mkdir -p /usr/src/app

if ls /code/*.jar 1> /dev/null 2>&1
then
 cp -f /code/*.jar /usr/src/app/
else
 echo "ERROR! did not find any *.jar file"
 exit 1
fi
