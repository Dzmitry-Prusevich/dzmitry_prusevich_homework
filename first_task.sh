########  COMMANDS    FROM    TASK 1


####3 TASK
httpd -S

[test@vm1 ~]$ sudo firewall-cmd --permanent --add-port=80/tcp
success
[test@vm1 ~]$ sudo firewall-cmd --permanent --add-port=443/tcp
success
[test@vm1 ~]$ sudo firewall-cmd --reload
success


sudo mkdir /etc/httpd/sites-available /etc/httpd/sites-enabled


yum install -y httpd
#2
 cat << EOF > /var/www/html/index.html
<h2>Hello from httpd</h2>
<hr />
<p>Created by Name Surname</p>
EOF
#3
     sudo systemctl start httpd
     sudo systemctl status httpd
     sudo systemctl enable httpd
     sudo systemctl status httpd

sudo firewall-cmd --permanent --add-port=80/tcp
sudo firewall-cmd --permanent --add-port=443/tcp
sudo firewall-cmd --reload


#####4  TASk

yum -y install arp apr-devel apr-util apr-util-devel pcre pcre-devel

sudo systemctl stop httpd

yum groupinstall " Development Tools"  -y

yum install expat-devel pcre pcre-devel openssl-devel -y

sudo yum install -y wget
wget https://github.com/apache/httpd/archive/2.4.28.tar.gz -O httpd-2.4.28.tar.gz
wget https://github.com/apache/apr/archive/1.6.2.tar.gz -O apr-1.6.2.tar.gz
wget https://github.com/apache/apr-util/archive/1.6.0.tar.gz -O apr-util-1.6.0.tar.gz

[Dzmitry@localhost ~]$ tar -xzf httpd-2.4.28.tar.gz
[Dzmitry@localhost ~]$ tar -xzf apr-1.6.2.tar.gz
[Dzmitry@localhost ~]$ tar -xzf apr-util-1.6.0.tar.gz
sudo -i
[root@localhost ~]# cd /home/Dzmitry/


[root@localhost Dzmitry]# mv apr-1.6.2 httpd-2.4.28/srclib/apr
[root@localhost Dzmitry]# mv apr-util-1.6.0 httpd-2.4.28/srclib/apr-util
[root@localhost Dzmitry]# cd httpd-2.4.28


[root@localhost httpd-2.4.28]# ./buildconf

[root@localhost httpd-2.4.28]# ./configure --enable-ssl --enable-so --with-mpm=event --with-included-apr –prefix=/usr/local/apache2

[root@localhost httpd-2.4.28]# make

[root@localhost httpd-2.4.28]# make install


[root@localhost httpd-2.4.28]# echo “pathmunge /usr/local/apache2/bin” > /etc/profile.d/httpd.sh

[root@localhost httpd-2.4.28]# vim /etc/systemd/system/httpd.service




systemctl daemon-reload
systemctl start httpd
systemctl enable httpd
systemctl status httpd


vim /usr/local/apache2/htdocs/index.html






/usr/local/apache2/bin/apachectl -S

systemctl stop httpd





Check

Restarting Apache Gracefully

If you are restarting the web server on a live website, you should do it gracefully.
A graceful restart tells the web sever to finish any active connections before restarting. This means that active visitors to your site will be able to finish downloading anything already in progress before the server restarts.

