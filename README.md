# dzmitry_prusevich_homework


#                 TASK 1

yum install -y httpd

###____2
```
 cat << EOF > /var/www/html/index.html
<h2>Hello from httpd</h2>
<hr />
<p>Created by Dzmitry Prusevich</p>
EOF
```
###____3

     sudo systemctl start httpd

     sudo systemctl status httpd

     sudo systemctl enable httpd

     sudo systemctl status httpd


sudo firewall-cmd --permanent --add-port=80/tcp

sudo firewall-cmd --permanent --add-port=443/tcp

sudo firewall-cmd –reload


###Screenshots of test web pages being opened in browser
![alt text][logo1]

[logo1]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/1.jpg




###___4

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


![alt text][logo2]

[logo2]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/2.jpg




systemctl daemon-reload

systemctl start httpd

systemctl enable httpd

systemctl status httpd




vim /usr/local/apache2/htdocs/index.html

![alt text][logo3]

[logo3]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/3.jpg
## Screenshots of test web pages being opened in browser





/usr/local/apache2/bin/apachectl -S


##  Screenshots of output of web server checks, e.g. httpd -S

![alt text][logo4]

[logo4]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/4.jpg

systemctl stop httpd

![alt text][logo5]

[logo5]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/5.jpg




Check

Restarting Apache Gracefully

If you are restarting the web server on a live website, you should do it gracefully.
A graceful restart tells the web sever to finish any active connections before restarting. This means that active visitors to your site will be able to finish downloading anything already in progress before the server restarts.



#					TASK2


WITH HTTPD


[root@localhost bin]# mkdir -p /var/www/dzpr.com/public_html

[root@localhost bin]# mkdir -p /var/www/dzmtrpr.com/public_html

[root@localhost bin]# vim /var/www/dzpr.com/index.html

[root@localhost bin]# vim /var/www/dzmtrpr.com/index.html

[root@localhost bin]# mkdir /etc/httpd/sites-available

[root@localhost bin]# mkdir /etc/httpd/sites-enabled

echo “IncludeOptional sites-enabled/*.conf” >> /etc/httpd/conf/httpd.conf

vim /etc/httpd/sites-available/dzpr.com.conf


##Screenshots of web server configurations used in tasks

![alt text][logo6]

[logo6]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/2_1.jpg


![alt text][logo7]

[logo7]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/2_2.jpg


![alt text][logo8]

[logo8]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/2_3.jpg






![alt text][logo9]

[logo9]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/2_4.jpg



[root@localhost bin]# vim /etc/httpd/conf/httpd.conf

[root@localhost bin]# vim /etc/httpd/conf.d/dzmtrpr.com.conf

[root@localhost bin]# systemctl restart httpd

[root@localhost bin]# vim /etc/httpd/conf.d/dzmtrpr.com.conf

[root@localhost bin]# systemctl restart httpd

[root@localhost bin]# vim /etc/httpd/conf.d/dzmtrpr.com.conf

[root@localhost bin]# vim /var/www/dzmtrpr.com/index.html


[root@localhost bin]# apachectl configtest

Syntax OK

[root@localhost bin]# systemctl status httpd

[root@localhost bin]# systemctl restart httpd

cp /var/www/dzmtrpr.com/index.html /var/www/dzmtrpr.com/ping.html

[root@localhost bin]# vim /var/www/dzmtrpr.com/index.html

[root@localhost bin]# systemctl restart httpd


![alt text][logo10]

[logo10]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/2_5.jpg




[root@localhost bin]# vim /etc/httpd/conf.d/dzmtrpr.com.conf

[root@localhost bin]# systemctl restart httpd


##Screenshot of debug console to confirm mod_rewrite is working while opening /

##Screenshot of debug console to confirm mod_rewrite is working while opening /index.html

##Screenshot of debug console to confirm mod_rewrite is working while opening /none-existing-page

![alt text][logo11]

[logo11]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/3_1.jpg


![alt text][logo12]

[logo12]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/3_2.jpg




![alt text][logo13]

[logo13]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/3_3.jpg


![alt text][logo14]

[logo14]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/3_4.jpg
















#TASK 3

sudo yum install epel-release -y

yum install -y cronolog

mkdir /var/www/dzmtrpr.com/logs

vim /etc/httpd/conf.d/dzmtrpr.com.conf


setenforce 0

 systemctl restart httpd

 getenforce


##Screenshot of virtual host with cronolog configuration, output of tree command showing layout of log files created by cronolog

![alt text][logo15]

[logo15]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/4_1.jpg


![alt text][logo16]

[logo16]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/4_2.jpg



yum install -y tree

tree

![alt text][logo17]

[logo17]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/4_3.jpg




#TASK 4


vim /etc/httpd/conf.d/dzmtrpr.com.conf

[root@localhost logs]# systemctl restart httpd


vim /etc/httpd/conf/httpd.conf

systemctl restart httpd

##Screenshot of virtual host configuration with logging to syslog. Screenshots of syslog entries related to access/error web server logging.

![alt text][logo18]

[logo18]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/5_1.jpg



![alt text][logo19]

[logo19]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/5_2.jpg


![alt text][logo20]

[logo20]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/5_3.jpg

curl -il http://www.dzmitry.prusevich.com/index.html

 vim /etc/httpd/conf/httpd.conf


systemctl restart httpd

less /var/log/messages | tail

tail -f  /var/log/messages

![alt text][logo21]

[logo21]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day1/5_4.jpg

