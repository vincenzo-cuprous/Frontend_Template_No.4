FROM ubuntu:latest
RUN sudo apt update -y && sudo apt upgrade -y
RUN sudo apt install nginx
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD ["nginx","-g","damon off;"]
