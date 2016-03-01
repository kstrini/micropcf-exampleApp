#!/usr/bin/env bash
set -e

get_code="curl -I $CODE_URL 2>/dev/null | head -n 1 | cut -d$' ' -f2"
status_code=`eval $get_code`
if [ "$status_code" != "200" ]
then
  echo $status_code
  echo "Expect status code from $CODE_URL as 200"
  exit 1
fi