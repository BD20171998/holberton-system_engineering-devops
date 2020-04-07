#!/usr/bin/env bash
# In this first debugging project, you will need to get Apache to run on the
# container and to return a page containing Hello Holberton when querying the
# root of it.
service apache2 start
sudo sed -i "/Listen 80/a NameVirtualHost \*\:80" /etc/apache2/ports.conf
