######## COMMANDS FROM SECOND TASK

					TASK2


WITH HTTPD

[root@localhost bin]# mkdir -p /var/www/dzpr.com/public_html
[root@localhost bin]# mkdir -p /var/www/dzmtrpr.com/public_html

[root@localhost bin]# vim /var/www/dzpr.com/index.html
[root@localhost bin]# vim /var/www/dzmtrpr.com/index.html
[root@localhost bin]# mkdir /etc/httpd/sites-available
[root@localhost bin]# mkdir /etc/httpd/sites-enabled

echo “IncludeOptional sites-enabled/*.conf” >> /etc/httpd/conf/httpd.conf

vim /etc/httpd/sites-available/dzpr.com.conf









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





[root@localhost bin]# vim /etc/httpd/conf.d/dzmtrpr.com.conf
[root@localhost bin]# systemctl restart httpd


















