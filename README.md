# docker-node-development
Repository for a simple docker project to run a Node JS development environment

## Requirements

First off we require docker-compose. Tested with `docker-compose version 1.24.1`. 

## Get the repo!
Clone or download the repository into a folder on your local environment using the method of your choice, such as :

Use the 'clone or download' button on this web page
Use your favourite Git client to clone the repo
For you 'command line addicts' use the command line to clone the repo


docker-compose run --rm -e TMR_CONFIG_DIR=/app/ --service-ports node_devel_environment

## First boot 

This is very simple, using docker-compose execute the following command from the root of this repository:

`docker-compose up --build`

## Run the container

### Run with default settings
The dockerfile provides some default settings suitable for most use cases - e.g. exposes web container port - 8080, a default user, and a port number as an environment variable.  To run the container with these defaults, simplu use the following command from the root of the local repo folder:

`docker-compose run --rm --service-ports node_devel_environment`

### Run with optional settings
To define an additional environment variable you could use the following command:

`docker-compose run --rm -e TMR_CONFIG_DIR=/app/ --service-ports node_devel_environment`

To change the web container port number, say - expose the container to port 4000  you could use the following command:

`docker-compose run --rm -p 4000:3000 node_devel_environment`
