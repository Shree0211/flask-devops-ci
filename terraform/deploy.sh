#!/bin/bash

sudo apt update -y
sudo apt install -y python3 python3-pip git

cd /home/ubuntu

# clone your repo
git clone https://github.com/Shree0211/flask-devops-app.git

cd flask-devops-app

python3 -m venv venv
source venv/bin/activate

pip install -r requirements.txt

# run app in background
nohup python app.py &
