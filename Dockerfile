FROM ubuntu:latest
RUN apt install sudo
RUN sudo apt update -y && sudo apt upgrade -y
RUN sudo apt install nginx
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
