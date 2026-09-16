```bash
#!/bin/bash

# Update packages
sudo dnf update -y

# Install Nginx
sudo dnf install nginx -y

# Enable and start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Remove default Nginx page
sudo rm -f /usr/share/nginx/html/index.html

# Copy website files
sudo cp website/index.html /usr/share/nginx/html/index.html

# Restart Nginx
sudo systemctl restart nginx

echo "Website deployed successfully!"
```
