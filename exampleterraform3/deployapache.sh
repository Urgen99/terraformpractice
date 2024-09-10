#!/bin/bash
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
cd /tmp/
git clone https://github.com/srtimsina/devops-techaxis.git
sudo cp -r devops-techaxis/* /var/www/html/
sudo systemctl restart apache2
