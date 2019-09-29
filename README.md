#TASK1

###1____

vim /etc/httpd/conf.modules.d/00-mpm.conf 

![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/1_1.png


[root@worker ~]# vim /etc/httpd/modules/mod_mpm_worker.so 

###2 ______

vim /etc/httpd/conf/httpd.conf 
systemctl restart httpd
[root@worker ~]# systemctl status httpd


![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/1_2.png



###3 Show that httpd is using worker module.
[root@worker ~]# httpd -V
![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/1_3.png


![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/1_4.png


###4 task
vim /etc/httpd/conf/httpd.conf 

![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/1_5.png


ab -n 100000 -c 500  http://worker.dzmitry.prusevich/index.html
tail -f /var/log/httpd/error_log 
![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/1_4_1.png

![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/1_7.png


![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/1_9.png



###5 
Process tree:
![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/5_2.png

![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/5_5.png

###6___7__8
Prefork:
![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/6_1.png

![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/6_2.png

![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/6_3.png


![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/6_4.png

###9

Before generating ab-requests
![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/9_1.png

After generating 100 000 requests (up to 500 simultaneously):
Number of processes = 25 ( field - 25 requests currently being processed, 0 idle workers)
![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/9_2.png

### 10
![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/10_1.png

![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/


#TASK 2

![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/

###1 ----
[root@worker ~]# httpd -M | grep prox
[Fri Sep 27 19:38:29.787566 2019] [so:warn] [pid 5315] AH01574: module mpm_prefork_module is already loaded, skipping
[Fri Sep 27 19:38:29.787634 2019] [so:warn] [pid 5315] AH01574: module status_module is already loaded, skipping
 proxy_module (shared)
 proxy_ajp_module (shared)
 proxy_balancer_module (shared)
 proxy_connect_module (shared)
 proxy_express_module (shared)
 proxy_fcgi_module (shared)
 proxy_fdpass_module (shared)
 proxy_ftp_module (shared)
 proxy_http_module (shared)
 proxy_scgi_module (shared)
 proxy_wstunnel_module (shared)


###2-----------
[root@worker ~]# vim /etc/httpd/conf.modules.d/00-proxy.conf 
![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/5.png



###3___4___5

vim /etc/httpd/conf.d/frd-proxy.conf 
vim /etc/httpd/conf/httpd.conf 
[root@forward ~]#  htpasswd -c /etc/httpd/conf/.htpasswd Dzmitry_Prusevich
New password: 
Re-type new password: 
Adding password for user Dzmitry_Prusevich
systemctl restart httpd




![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/11_4.png



![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/11_3.png






![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/11_9.png


### 6

hostnamectl set-hostname reverse.dzmitry.prusevich
vim /etc/httpd/conf/httpd.conf 
[root@reverse ~]# systemctl restart httpd
[root@reverse ~]# mv /etc/httpd/conf.d/frd-proxy.conf /etc/httpd/conf.d/frd-proxy._c_onf
[root@reverse ~]# vim /etc/httpd/conf.d/rev-proxy.conf 
[root@reverse ~]# systemctl restart httpd


![alt text][logo]

[logo]:https://github.com/Dzmitry-Prusevich/dzmitry_prusevich_homework/blob/apache_day2/11_11.png

