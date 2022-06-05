#! /bin/bash

#Deleting files and killing dotnet processes
cd /usr/projects/mywebsite; rm -rf *;
MUHAMMEDBUYUKKINACI_PID=$(ps -aux | grep mywebsite.dll | grep dotnet | awk '{print $2}')
echo $MUHAMMEDBUYUKKINACI_PID
kill -9 $MUHAMMEDBUYUKKINACI_PID 
echo "The application whose process id is $MUHAMMEDBUYUKKINACI_PID has been killed successfully"

# Cloning repo from GitHub to  the server
cd /home/scripts/; rm -rf muhammedbuyukkinaci.com;
echo "The old repo has been removed"
git clone https://github.com/MuhammedBuyukkinaci/muhammedbuyukkinaci.com
echo "The current repo has been cloned into my server"

# Creating a ready-to-publish app
cd /home/scripts/muhammedbuyukkinaci.com/mywebsite
dotnet publish -c Release -r ubuntu.18.04-x64 --self-contained
echo "New project has been created"

# Copying app components to relevant directory
cd /home/scripts/muhammedbuyukkinaci.com/mywebsite/bin/Release/netcore*/ubuntu*/publish/
cp -rf * /usr/projects/mywebsite/
echo "All files in new project has been copied into new repository"

#To run app
ldd *.so
dotnet mywebsite.dll
echo "Application has been run"

