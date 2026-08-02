# Base Image
FROM nginx:alpine

# Remove the default website
RUN rm -rf /usr/share/nginx/html/*

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

# Copy website files
COPY index.html.template /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Replace default NGINX configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose web port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
