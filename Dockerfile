# Use the official NGINX image from Docker Hub
FROM nginx:alpine

# Copy the custom NGINX configuration into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy index.html into the NGINX HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 8080 for Cloud Run
EXPOSE 8080

# Run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
