#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]   #checking whether the person running the script is a root user or not as packages can only be installed by root users.
then
echo "you are not a root user"
exit 1
else
echo "you are a root user"
fi
dnf install git -y   #installing git package.
#now there is a need to check whether it got installed properly or not.
#the success or failure of previous command is generally stored in $?
if [ $? -ne 0 ]
then
echo "installing git is ...FAILED"
exit 1
else
echo "installing git is ...SUCCESS"
fi
dnf install mysql -y
if [ $? -ne 0 ]
then 
echo "mysql is installing ....FAILED"
else
echo "mysql installing is ...SUCCESS"
fi