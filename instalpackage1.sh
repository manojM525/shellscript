#!/bin/bash
ID=$(id -u)
VALIDATE () {
if [ $1 -ne 0 ]
then
echo "your installation of $2 is ...FAILURE "
else
echo "your installation of $2 is  ...SUCCESS"
fi
}

if [ $ID -ne 0 ] 
then
echo "you are not a root user"
exit 1
else
echo "you are a root user"
fi
dnf install git -y
VALIDATE $? "git"
