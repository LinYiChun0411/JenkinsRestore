#!/bin/bash
currentPath=`pwd`
useradd buildcode -m  #add buildcode user with home directory
cd /home/buildcode/
mkdir .ssh
cd $currentPath
cp -rf id_rsa /home/buildcode/.ssh/ #copy private key to .ssh folder
