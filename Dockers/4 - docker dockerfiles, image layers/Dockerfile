FROM ubuntu:22.04


RUN apt update && \
	apt install -y nginx && \
	rm -rf /var/lib/apt/lists/* 

EXPOSE 80

WORKDIR /var/www

#COPY site /etc/nginx/sites-available #copying working site files inside the container
#RUN ln -s /etc/nginx/sites-available /etc/nginx/sites-enabled  #linking config and site files so they are visible(enabled)

CMD ["nginx" "-g" "daemon off;" ]
