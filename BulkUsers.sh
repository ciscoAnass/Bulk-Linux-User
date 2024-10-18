#!/bin/bash
clear

if [ $# -eq 2 ]; then
    user="$1"
    num="$2"
else
    read -p "Enter the username you want to create: " user
    read -p "How many users do you want to create: " num
fi



# Generate the users we gonna create to a File call "users.csv"
for i in $(seq "$num")
do
  echo $user$i >> users.csv
done


# User Creation
for i1 in $(cat users.csv)
do
useradd -m -s /bin/bash -p $(mkpasswd -m sha-512 $i1 ) $i1
echo "User : $i1 , Password : $i1" >> UsrAccess-$user.csv
done

cat UsrAccess-$user.csv

rm -r users.csv
