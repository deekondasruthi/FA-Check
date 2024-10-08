FROM nginx:latest

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY esign /usr/share/nginx/html/

EXPOSE 7073

ENTRYPOINT ["nginx", "-g", "daemon off;"]
