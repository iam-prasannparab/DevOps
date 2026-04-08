#!/bin/bash


echo "============================ Creation of User ==========================="

# Take inputs from the user
read -p "Enter the username:" username  # username is the variable which store the value input by user for username
read -p "Enter the password:" password  #similarly like username password is also variable ..."

# Creating the user

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username" 

echo "============================ Creation Successfull ======================="
