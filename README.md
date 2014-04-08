docker-ubuntu-dev
=================

A docker image for Ubuntu based in the phusion/baseimage-docker made to test my provy scripts.

I'm using phusion/baseimage-docker basically because of [**this**](http://phusion.github.io/baseimage-docker/).

Download
========

To push the image from the docker repository.

    docker push arthuralvim/docker-ubuntu-dev

or to push the image from github.

    docker build -t "arthuralvim/docker-ubuntu-dev" github.com/arthuralvim/docker-ubuntu-dev

Run
===

For running this image you just need to:

    docker run -d -p 2222:22 arthuralvim/docker-ubuntu-dev

After that you can ssh into it:

    ssh root@127.0.0.1 -p 2222

(password="pass")

Port 22 is exposed for ssh access.
