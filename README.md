docker & golang
=======================

A small tcp echo server written in Golang, packaged in a container using Docker.io

Instructions the hard way
------------

    #1. install docker http://docs.docker.io/en/latest/installation
    #2. clone this repository
    #3. create a docker container
    $ sudo docker build -t luisbebop/echo-server .
    #4. run the docker container you have created
    $ sudo docker run -d -p 8800:8800 luisbebop/echo-server

Instructions the easy way
------------

This approach will use a container [I previously uploaded to Docker registry](https://index.docker.io/u/luisbebop/echo-server/)

    #1. run the docker container already uploaded to http://index.docker.io
	$ sudo docker run -d -p 8800:8800 luisbebop/echo-server
	
Upgrade the container
-----------

    # change the code, compile and push to github
    $ sudo docker build -t luisbebop/echo-server .
    $ sudo docker push luisbebop/echo-server
    
    # on docker server or the same machine
    $ sudo docker stop container-id
    $ sudo docker pull luisbebop/echo-server
    $ sudo docker run -d -p 8800:8800 luisbebop/echo-server