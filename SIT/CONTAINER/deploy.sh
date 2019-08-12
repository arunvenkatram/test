#!/bin/bash
scp data/* user@SIT_server:/var/tmp
ssh user@SIT_server:/var/tmp/data/docker-compose up


