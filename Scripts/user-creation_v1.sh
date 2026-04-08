#!/bin/bash


echo "==================================== Creation of User ========================================="

#Taking input from the user
read -p "Enter the username : " username                # username act as a variable for the data input by user
read -p "Enter the password : " password                # password act as a variable for the password data input by user

#Creating a user using "useradd" command and passing the values of the variable by using "$"
sudo useradd -m -p "$password" "$username"

echo "==================================== Creation Successfull ====================================="
