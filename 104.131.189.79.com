server {
    listen 80;
    listen [::]:80;

    root /var/www/html/qualimentos/public;
    index index.php index.html index.htm index.nginx-debian.html;

    server_name 104.131.189.79.com www.104.131.189.79.com;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

}