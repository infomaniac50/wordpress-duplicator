#!/bin/bash
set -e

if [[ ! -e /var/www/html/installer.php && ! -e /var/www/html/wp-config.php ]]; then
  echo >&2 "---------------------------------------------------------"
  echo >&2 ""
  echo >&2 "No wordpress installation or installer.php found."
  echo >&2 ""
  echo >&2 "---------------------------------------------------------"
  exit 1
fi

exec "$@"
