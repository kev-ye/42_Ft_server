# Get debian image official -> tag buster : buster version debian
FROM debian:buster-slim

# Copy all of my source files to image/app (debian)
# Allocate the work folder path
COPY . /APP
WORKDIR /APP

# Install outil
RUN apt-get update \
    && apt-get install -y pwgen wget

# Install nginx
RUN apt-get install -y nginx

# Install mariadb
RUN apt-get install -y mariadb-server mariadb-client