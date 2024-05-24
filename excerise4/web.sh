#!/bin/bash
sudo yum install wget unzip httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/sperig.zipn
unzip -o 2117_infinite_loop.zip
sudo cp -r 2117_infinite_loop/* /var/www/html/
sudo systemctl restart httpd
