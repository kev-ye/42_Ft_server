# 42 project : ft_server

## Index
___

* [Presentation](#Presentation)
* [Main file](#Main_file)
* [How_to_run_?](#How_to_run_?)

## Presentation 
___

    Discover the "docker" technology and use it to install a complete web server.

## Main_file
___

[__Docker_file_content__](./Dockerfile)  
[__Script_file_content__](./srcs/init.sh)  
[__Server_file_content__](./srcs/website_autoindex_on)  

## How_to_run_?
___

`Docker image build command :`  

    docker build -t "name"

`Docker container run command :`  

    docker run -it -p 80:80 -p 443:443 "name"