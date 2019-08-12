#!/bin/bash
read "Enter the environment to deploy the code - SIT or PROD: " ENV
read "Please enter if it has to be deployed as VM or as Container VM or CONTAINER: " ARCH
if [[ ENV == SIT ]]
then
# SIT block
else if [[ ENV == PROD ]]
then
# PROD block
else
echo "Environment should be either SIT or PROD"

