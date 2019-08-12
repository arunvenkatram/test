#!/bin/bash
read "Enter the environment to deploy the code - SIT or PROD: " ENV
read "Please enter if it has to be deployed as VM or as Container VM or CONTAINER: " ARCH

if [[ $ENV == SIT ]]
then
if [[ $ARCH == VM ]]
then
SIT/VM/deploy.sh
elif [[ $ARCH == CONTAINER ]]
then
SIT/CONTAINER/deploy.sh
else
echo "Please enter if it has to be deployed as VM or as Container VM or CONTAINER"
exit 2
fi
elif [[ $ENV == PROD ]]
then
if [[ $ARCH == VM ]]
then
PROD/VM/deploy.sh
elif [[ $ARCH == CONTAINER ]]
then
PROD/CONTAINER/deploy.sh
else
echo "Please enter if it has to be deployed as VM or as Container VM or CONTAINER"
exit 2
fi
else
echo "Environment should be either SIT or PROD"
exit 1
fi
