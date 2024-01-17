# Use a lightweight base image
FROM alpine:latest

# Install nginx
RUN apk --no-cache add nginx

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the content of the local src directory to /usr/share/nginx/html
COPY . .

# Expose port 80
EXPOSE 80

# Start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
