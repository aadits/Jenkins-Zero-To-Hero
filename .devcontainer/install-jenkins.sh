#!/bin/bash

echo "Starting Jenkins setup..."

# Start Jenkins in the background
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Wait for Jenkins to initialize
sleep 10

# Show Jenkins initial admin password
echo "Jenkins is running! Access it at: http://localhost:8080"
echo "Initial Admin Password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
