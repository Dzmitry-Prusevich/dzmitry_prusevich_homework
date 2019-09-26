#######   COMMANDS FROM FOURTH TASK



vim /etc/httpd/conf.d/dzmtrpr.com.conf

[root@localhost logs]# systemctl restart httpd


vim /etc/httpd/conf/httpd.conf
systemctl restart httpd






curl -il http://www.dzmitry.prusevich.com/index.html

 vim /etc/httpd/conf/httpd.conf

systemctl restart httpd
less /var/log/messages | tail
tail -f  /var/log/messages


curl -iL http://www.dzmitry.prusevich.com/ping.html 
