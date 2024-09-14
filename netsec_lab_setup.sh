!#/bin/bash

#!/bin/bash

# Clone the repository (assuming this script is executed elsewhere)
git clone https://github.com/The-Team-Phoenix/PhoenixAcademy-NetSec_ThreatHunt_LAB.git
cd lab-environment


# Build and start the containers using Docker Compose
docker-compose up --build -d

# Show status of containers
docker-compose ps

# Inform the user
echo "Lab setup complete! Access the jump host via http://localhost:3000"
