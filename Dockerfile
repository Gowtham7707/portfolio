# Use the official Nginx image as the base
FROM nginx:alpine

# Copy the entire directory (including images, index.html, styles, etc.)
COPY ./ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Keep Nginx running in the foreground
CMD ["nginx", "-g", "daemon off;"]
