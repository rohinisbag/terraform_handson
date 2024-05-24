#!/bin/bash
sudo yum install wget unzip httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/sperig.zip
unzip -o spering spering.zip
sudo cp -r spering-html/* /var/www/html/
sudo systemctl restart httpd

