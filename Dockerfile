# Use the official NGINX image from Docker Hub
FROM nginx:alpine

# Copy the NGINX configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8080 (Cloud Run default)
EXPOSE 8080

# Start NGINX in the foreground (necessary for Cloud Run)
CMD ["nginx", "-g", "daemon off;"]
