FROM nginx
ADD static.zip /usr/share/nginx/html
RUN apt-get update ; apt-get install unzip ; rm -rvf /var/lib/apt
RUN unzip /usr/share/nginx/html/static.zip
