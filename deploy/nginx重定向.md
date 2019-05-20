server {
    listen       80;
    server_name  example.com;
    return       301 http://www.example.com$request_uri;
}

# https
server {
    listen       443 ssl;
    server_name  example.com;
    ssl_certificate      ssl/www.example.com.crt;
    ssl_certificate_key  ssl/www.example.com.key;
    return       301 https://www.example.com$request_uri;
}