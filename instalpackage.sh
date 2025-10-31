#!/bin/bash
ID=$(id -u)    #id -u command gives the numerical id of a user . id -u of a root user is always zero.
if [ $ID -ne 0 ]   #checking whether the person running the script is a root user or not as packages can only be installed by root users.
then
echo "you are not a root user"
exit 1
else
echo "you are a root user"
fi
apt install git -y   #installing git package.
#now there is a need to check whether it got installed properly or not
#the success or failure of previous command is generally stored in $?
if [ $? -ne 0 ]    #if $?=0 then the previous command was a success; if $?=1, it is a failure. this is called exit status
then
echo "installing git is ...FAILED"
exit 1
else
echo "installing git is ...SUCCESS"
fi
apt install mysql-server -y     #installing mysql
if [ $? -ne 0 ]
then 
echo "mysql is installing ....FAILED"
else
echo "mysql installing is ...SUCCES"
fi