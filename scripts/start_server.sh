#!/bin/bash
set -e

echo "Starting Nginx..."

chown -R nginx:nginx /var/www/html 2>/dev/null || chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

systemctl restart nginx
systemctl status nginx --no-pager
