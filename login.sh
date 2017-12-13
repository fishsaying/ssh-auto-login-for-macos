#!/bin/sh
cd "`dirname $0`"
BASE_HOME=`pwd`

host=$1
port=$2
#default user & password
user='root'
password='password'

if [ $3 ]; then
    user=$3
fi

if [ $4 ]; then
    password=$4
    ./auto_login.exp $host $port $user $password
else
    ./auto_login_without_passwd.exp $host $port $user
fi
