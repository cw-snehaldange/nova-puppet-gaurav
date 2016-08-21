#OVERVIEW:
This module contains code snippet of installing and configuring nova controller.

#DESCRIPTION:
The main file is init.pp which is executed at first. It includes other files mentioned below:

databasecreate :      to create database  
novauser :            privileges for nova user and assign database privileges    
source :              to create file and  shell command to source admin-openrc    
service_endpoint :    to create services and endpoints  
install :             to install the required packages  
config :              to configure the conf file  
novasdmin :           nova as admin  
shell :               shell commands  
restart :             to restart the required packages  
params :              to list all the variables
