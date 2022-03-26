#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/Asiya26/private_my_project.git
cd /home/ubuntu/private_my_project
apt install python3-pip -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/private_my_project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
