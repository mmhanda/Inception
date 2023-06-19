# Inception
# Project Name: Small Infrastructure with Docker Compose

This project is aimed at setting up a small infrastructure consisting of different services under specific rules. The entire project has to be completed in a virtual machine using Docker Compose. Each Docker image must have the same name as its corresponding service, and each service has to run in a dedicated container.

To ensure optimal performance, the containers must be built from either the penultimate stable version of Alpine or Debian. You are required to write your own Dockerfiles, one per service, and call them in your docker-compose.yml via your Makefile. This means that you have to build your Docker images for the project yourself. It is forbidden to pull ready-made Docker images or use services such as DockerHub (except for Alpine/Debian).


The following services must be set up:

- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only. 
- A Docker container that contains WordPress + php-fpm (it must be installed and configured) only without nginx.
- A Docker container that contains MariaDB only without nginx. - A volume that contains your WordPress database.
- A second volume that contains your WordPress website files. - A docker-network that establishes the connection between your containers.

Your containers must restart in case of a crash.


## Getting Started

To get started with this project, you will need to have a virtual machine set up on your local machine. You will also need to have Docker and Docker Compose installed on your virtual machine.



## Installation
0. Rename the `.env.example` file to `.env` and set the environment variables.
    you can use this command `mv ./srcs/.env.example ./srcs/.env`.

1. Clone this repository to your virtual machine.
2. Navigate to the project directory.
3. Run `make up` to build the Docker images for the project and to start the containers.
5. Access the WordPress website at `https://localhost:443` or `https://localhost`.
6. To stop the containers, run `make down`.
7. To remve the containers, and the volumes, and the network, and the images, run `make clean`.


## Usage

Once the containers are up and running, you can access the WordPress website at `https://localhost`.
You can also access the NGINX server at `https://localhost:8080`.


## Contributing

If you have any suggestions or improvements for this project, feel free to create a pull request. All contributions are welcome!