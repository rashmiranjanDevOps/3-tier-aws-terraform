#!/bin/bash
yum update -y
yum install -y httpd git

systemctl start httpd
systemctl enable httpd

cd /var/www/html
rm -rf *
git clone https://github.com/karishma1521success/swiggy-clone.git
mv swiggy-clone/* .
chown -R apache:apache /var/www/html

echo "Deployment completed" > /var/www/html/status.txt
