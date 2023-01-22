# !/bin/bash -x
sudo yum update -y
sudo yum install -y httpd.x86_64
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
sudo touch /var/www/html/index.html
sudo chmod 777 /var/www/html/index.html
sudo echo “Hello CloudChamp from $(hostname -f).Created by USERDATA in Terraform. SUBSCRIBE NOW!!” > /var/www/html/index.html
ls /var/www/html/