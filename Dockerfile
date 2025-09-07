FROM nginx

COPY www/index.html /usr/share/nginx/html
COPY conf/nginx.conf /etc/nginx


EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]