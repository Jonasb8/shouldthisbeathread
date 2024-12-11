FROM nginx:alpine

COPY --from=nginx:alpine /docker-entrypoint.sh /docker-entrypoint.sh
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

EXPOSE ${PORT:-80}

CMD ["nginx", "-g", "daemon off;"]