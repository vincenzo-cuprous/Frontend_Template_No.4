FROM ubuntu:latest
RUN apt update -y
RUN apt install nginx -y
COPY index.html /var/www/html/index.html
COPY style.css /var/www/html/style.css
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
