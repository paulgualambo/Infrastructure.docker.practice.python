#!/bin/bash
# set the STRING variable
#Var
APP=docker_python1
HOST=192.168.1.56
USER_SSH=paul
WORKDIR=/home/paul/apps

FILE_TAR=app.tar.gz 

#
tar czvf $FILE_TAR --exclude='*.sh' --exclude='*.git*' --exclude='__pycache__' --exclude='*.tar.gz' .
scp app.tar.gz $USER_SSH@$HOST:/home/$USER_SSH/
ssh $USER_SSH@$HOST "rm -rf $WORKDIR/$APP"
ssh $USER_SSH@$HOST "mkdir $WORKDIR/$APP && tar -xvzf $FILE_TAR -C $WORKDIR/$APP"
ssh $USER_SSH@$HOST "rm $FILE_TAR"

rm -rf $FILE_TAR