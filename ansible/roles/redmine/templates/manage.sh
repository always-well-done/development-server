#!/bin/bash

ERROR_MSG="manage.sh start or manage.sh stop"

if [ $# -ne 1 ]
then
  echo $ERROR_MSG
  exit 1
fi

cd {{ REDMINE_PATH }}

if [ $1 == "start" ]
then
  bundle exec passenger start -e production --address 127.0.0.1 --port 3000
elif [ $1 == "stop" ]
then
  bundle exec passenger stop
else
  echo $ERROR_MSG
  exit 1
fi

exit 0
