FROM ubuntu:latest
RUN apt update -y && apt upgrade -y
RUN apt install nginx
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
