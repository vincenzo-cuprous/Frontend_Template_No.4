FROM archlinux:latest

# Update package database and install nginx
RUN pacman -Syyu --noconfirm --needed
Run pacman -Sy --noconfirm --needed nginx

# Copy files to the web server directory
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY Resources/* /usr/share/nginx/html/Resources/

# Expose port 80 for the web server
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
