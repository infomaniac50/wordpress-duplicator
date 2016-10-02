#!/bin/bash
set -e

if ! [ -e /var/www/html/installer.php ]; then
  echo >&2 "--------------------------------------------------"
  echo >&2 ""
  echo >&2 "No installer.php found."
  echo >&2 ""
  echo >&2 "--------------------------------------------------"
  exit 1
fi

exec "$@"
