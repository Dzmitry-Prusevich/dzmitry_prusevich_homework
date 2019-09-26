##########  COMMANDS FROM THIRD TASK



sudo yum install epel-release -y

yum install -y cronolog

mkdir /var/www/dzmtrpr.com/logs

vim /etc/httpd/conf.d/dzmtrpr.com.conf

setenforce 0
 systemctl restart httpd
 getenforce






yum install -y tree
tree

