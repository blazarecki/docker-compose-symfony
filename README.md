# Docker compose - Symfony

This repository contains Docker compose configuration for Symfony2 project.

All configuration are under docker directory.

It use five containers :

- **data** : [data volume container](https://docs.docker.com/userguide/dockervolumes/)
- **web** : Nginx container base on [nginx image](https://registry.hub.docker.com/_/nginx/)
- **fpm** : php-fpm container base on [php image](https://registry.hub.docker.com/_/php/)
- **db** : Database container base on [mysql image](https://registry.hub.docker.com/_/mysql/)
- **tools** : Container with tools for web development like `php-cli`, `composer`, `node/npm`, `git`

In order to use it, download this code and place it at the root of your symfony2 project and run `docker-compose up -d`.

Some useful commands :

- `docker-compose up -d` Start all containers
- `docker-compose stop` Stop all containers
- `docker-compose run <name> <something>` To execute something in a specific container like `docker-compose run tools composer install`

Feel free to contribute
