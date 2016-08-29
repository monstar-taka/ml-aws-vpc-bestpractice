#!/bin/sh
dir=$1
action=$2
access_key=$3
secret_key=$4

cd ${dir} && terraform ${action} -var 'access_key='${access_key}'' -var 'secret_key='${secret_key}''
