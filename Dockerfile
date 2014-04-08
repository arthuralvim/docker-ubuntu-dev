# Basic Ubuntu installation for developing.
#
# VERSION               0.1

FROM phusion/baseimage:0.9.9
MAINTAINER Arthur Alvim <afmalvim@gmail.com>

# root settings
RUN echo "root:pass" | chpasswd
ENV HOME /root

# install packages
RUN apt-get update
RUN apt-get install --yes --force-yes aptitude
RUN apt-get install --yes --force-yes build-essential
RUN locale-gen en_US en_US.UTF-8

# ssh key
RUN /usr/sbin/enable_insecure_key

# expose port
EXPOSE 22 80

CMD ["/sbin/my_init"]

# clean up apt.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
