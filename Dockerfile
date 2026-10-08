FROM nginx:alpine

COPY index.html style.css assets/ /usr/share/nginx/html/

EXPOSE 80