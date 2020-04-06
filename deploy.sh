#!/bin/bash

echo "Start deploy"
cd ~/heroku_project
git fetch
git pull
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic
sudo systemctl restart apache2
