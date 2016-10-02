# wordpress-duplicator

This image sets up the environment to clone and run an wordpress installation imported from an archive created by [Wordpress Duplicator Plugin](https://de.wordpress.org/plugins/duplicator).

## Setup

```bash
$ mkdir -p wpclone/wordpress
```

Copy `installer.php` and `*.archive.zip` files into `wpclone/wordpress`.

Create a `docker-compose.yml` file in the `wpclone` directory with following content (set secure passwords!):
```yml
version: '2'

services:
  wordpress:
    image: drlogout/wordpress-duplicator
    ports:
      - 8080:80
    volumes:
      - "./wordpress:/var/www/html"

  mysql:
    image: mariadb:10.1.18
    environment:
      MYSQL_DATABASE: wordpress
      MYSQL_USER: wordpress
      MYSQL_PASSWORD: wordpress # change this!
      MYSQL_ROOT_PASSWORD: root # change this!
    volumes:
      - "./mysql:/var/lib/mysql"
```

Then start up the containers.

```bash
$ cd wpclone
$ docker-compose up
```

If the mysql container is started the first time it takes a while because the database is initialized.

Then navigate to [http://localhost:8080/installer.php`](http://localhost:8080/installer.php)
