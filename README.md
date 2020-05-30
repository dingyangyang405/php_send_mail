
// 发送请求示例：
// curl -d "邮件正文内容" "http://127.0.0.1/mail/dyy.php?to=1178175072@qq.com&subject=subject&who=dyy"
// curl -d @邮件正文内容文件 "http://127.0.0.1/mail/dyy.php?to=1178175072@qq.com&subject=subject&who=dyy"

// nginx
// server {
//     listen 80;
//     server_name 127.0.0.1;

//     root /var/www/mail/;

//     access_log /var/log/nginx/mail.access.log;
//     error_log /var/log/nginx/mail.error.log;

//     location / {
//         index mail.php;
//     }
//     location ~ \.php$ {
//         fastcgi_pass   unix:/var/run/php5-fpm.sock;
//         fastcgi_split_path_info ^(.+\.php)(/.*)$;
//         include fastcgi_params;
//         fastcgi_param  SCRIPT_FILENAME    $document_root$fastcgi_script_name;
//         fastcgi_param  HTTPS              off;
//         fastcgi_param  HTTP_PROXY         "";
//     }
// }


// apache
// <VirtualHost *:80>
//     ServerName 127.0.0.1
//     DocumentRoot /var/www/mail
//     <Directory /var/www/mail>
//     DirectoryIndex mail.php
//     Order allow,deny 
//     Allow from all 
//         Require all granted   
//     Options  FollowSymLinks
//     </Directory>
//     ErrorLog /var/log/apache2/mail_error.log
//     CustomLog /var/log/apache2/mail_access.log combined
// </VirtualHost>

