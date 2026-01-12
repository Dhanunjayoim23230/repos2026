#!bin/bash

#Write a script that prints:
#Hostname
#Current date and time
#Logged-in user


echo "hostname of present server: $(hostname -i)"

$(TZ=Asia/Kolkata date + (%Y-%m-%d))

echo "logged - in user :$id "

echo "LOGGED IN USER: $user "