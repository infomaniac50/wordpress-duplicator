#!/bin/bash
set -e

if [[ ! -e /var/www/html/wp-config.php && ! -e /var/www/html/installer.php && ]]
then
  cp /installer.php /var/www/html/installer.php
fi

exec "$@"
