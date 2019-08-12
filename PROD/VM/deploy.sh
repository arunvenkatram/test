#!/bin/bash
scp data/* user@PROD_server:/var/tmp
ssh user@SIT_server:/var/tmp/data/vagrant up
