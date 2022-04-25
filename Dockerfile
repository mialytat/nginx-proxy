FROM nginx:1.20

# New default conf containing the proxy config
COPY ./etc/nginx.conf /etc/nginx/conf.d/default.conf

# Backend not found html response
COPY ./backend-not-found.html /var/www/html/backend-not-found.html

# Nginx Proxy and SSL shared configs
COPY ./includes/ /etc/nginx/includes/

# Proxy SSL certs
COPY ./ssl/ /etc/ssl/certs/nginx/