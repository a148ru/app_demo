FROM nginx

RUN rm -rf /usr/share/nginx/html/*

COPY ./www /usr/share/nginx/html

RUN chown -R nginx:nginx /usr/share/nginx/html

# COPY conf/nginx.conf /etc/nginx/nginx.conf


EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]