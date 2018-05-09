#!/bin/bash
apt update && apt upgrade -y
apt install vim python3 python virtualenv build-essential python3-dev python procps -y
apt install python3-pip -y

DIR=/
FILE=deploy

if [ -e "$DIR$FILE" ] ; then
echo "Os diretórios já existem"
else
mkdir /deploy
mkdir /deploy/App
fi
cd /deploy/App
git init
git pull https://github.com/NivSoft/transpy.git
pip3 install -r requirements.txt
mv default.conf /etc/nginx/conf.d/default.conf
