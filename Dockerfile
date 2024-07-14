# Use a lightweight Nginx image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the HTML, CSS, and JavaScript files to the working directory
COPY index.html .
COPY clock.css .
COPY script.js .
COPY clockimg.png .
# Expose port 80
EXPOSE 80

# Start Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]
