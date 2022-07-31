# MySQL Docker Environment
[![Build Status](https://github.com/travistran1989/mysql-docker-env/workflows/docker-build/badge.svg)](https://github.com/travistran1989/mysql-docker-env/actions/)
[<img src="https://img.shields.io/twitter/follow/travistran1989.svg?label=Follow&style=social">](https://twitter.com/travistran1989)

Install a lightweight MySQL based on Ubuntu 18.04 Linux.

### Prerequisites
1. [Install Docker](https://www.docker.com/)
2. [Install Docker Compose](https://docs.docker.com/compose/)

## Configuration
Edit the `.env` file to update the default MySQL user and password.

## Installation
Clone this repository or copy the files from this repository into a new folder:
```
git clone https://github.com/travistran1989/mysql-docker-env.git
```
Open a terminal, `cd` to the folder in which `docker-compose.yml` is saved, and run:
```
docker-compose up
```

## Components
The docker image installs the following packages on your system:

|Component|Version|
| :-------------: | :-------------: |
|Percona Server|[Stable version: 5.7](https://hub.docker.com/r/percona/percona-server)|
|phpMyAdmin|[Latest from dockerhub](https://hub.docker.com/r/bitnami/phpmyadmin/)|

## Data Structure
Cloned project 
```bash
├── bin
├── data
├── LICENSE
├── README.md
└── docker-compose.yml
```

  * `bin` contains multiple CLI scripts to allow you add or delete database

  * `data` stores the MySQL database

## Usage
### Starting a Container
Start the container with the `up` or `start` methods:
```
docker-compose up
```
You can run with daemon mode, like so:
```
docker-compose up -d
```
The container is now built and running. 
### Stopping a Container
```
docker-compose stop
```
### Removing Containers
To stop and remove all containers, use the `down` command:
```
docker-compose down
```
### Creating a Database
You can either automatically generate the user, password, and database names, or specify them. Use the following to auto generate:
```
bash bin/db.sh [-D, --domain] example.com
```
Use this command to specify your own names, substituting `user_name`, `my_password`, and `database_name` with your preferred values:
```
bash bin/db.sh [-D, --domain] example.com [-U, --user] USER_NAME [-P, --password] MY_PASS [-DB, --database] DATABASE_NAME
```
### Accessing the Database
After installation, you can use phpMyAdmin to access the database by visiting `http://127.0.0.1:8080` or `https://127.0.0.1:8443`. The default username is `pitagon`, and the password is the same as the one you supplied in the `.env` file.

## Support & Feedback
If you still have a question after using MySQL Docker Environment, you have a few options.
* Connect [Travis Tran on Facebook](https://www.facebook.com/travistran1989) for real-time discussion.
* Reporting any issue on [Github mysql-docker-env](https://github.com/travistran1989/mysql-docker-env/issues) project.

**Pull requests are always welcome**
