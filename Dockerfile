FROM ubuntu:18.04
LABEL maintainer="aleg"
RUN  apt-get -y update && apt-get -y install nginx
COPY default /etc/nginx/sites-available/default
COPY index.html /usr/share/nginx/html/index.html
COPY images/image0.jpeg /usr/share/nginx/images/image0.jpeg
COPY images/image1.jpeg /usr/share/nginx/images/image1.jpeg
COPY style.css /usr/share/nginx/html/style.css
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
