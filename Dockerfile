FROM nginx

RUN rm -rf /usr/share/nginx/html/*

COPY ./www/index.html /usr/share/nginx/html/index.html

RUN chown -R nginx:nginx /usr/share/nginx/html

EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]
