#!/bin/bash
echo "************************** Starting webserver container *************************"
# Fetch host IP that site will be served on:
ip="$(ifconfig | grep -A 1 'eno1' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"

# Start the container
sudo docker run --name=webserver -d -p 80:80 -v "$PWD/www-data":/var/www/html webserver

# Display some helpful container information
echo "     ----------------------- Container Info ---------------------"
echo ""
echo "        Site Up! @------------> : http://$ip:80/"
echo ""
echo "        Apache logfile location : /var/log/apache2/errors.log"
echo "        PHP.ini file location   : /usr/local/etc/php/php.ini"
echo ""
echo "        Additional Modules:"
echo "          Located at            : /etc/apache2/mods-enabled/"
echo "          (Module) rewrite      : Added via a2enmod rewrite. Allows for URL rewrite in .htaccess"
echo ""
echo "        Cofigured Hosts:"
echo "          ServerFoxMVC          : /etc/apache2/sites-available/000-default.conf"
echo ""
echo ""
