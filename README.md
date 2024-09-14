# PhoenixAcademy NetSec ThreatHunt LAB

Welcome to the **PhoenixAcademy NetSec ThreatHunt LAB**! This repository contains Docker-based configurations to create an isolated lab environment with various network security tools such as Suricata, Nginx, Tcpdump, Nikto, and Nmap, as well as a web-based jump host for easy access to all services.

## Lab Overview

The lab consists of four Docker containers, each hosting different tools and services:

1. **DNS, Suricata, Tcpdump** - Provides DNS services, Suricata IDS, and Tcpdump.
2. **Nginx, Suricata, Tcpdump** - Hosts an Nginx web server alongside Suricata IDS and Tcpdump.
3. **Nikto, Nmap, Tcpdump** - Includes Nikto, Nmap for vulnerability scanning, and Tcpdump.
4. **Web-based Jump Host** - A web-based SSH terminal (using Wetty) to provide access to the other containers from a web browser.

## Features

- **Suricata IDS**: A powerful, open-source intrusion detection system.
- **Tcpdump**: A packet analyzer for network diagnostics.
- **Nginx**: A popular web server.
- **Nikto & Nmap**: Security tools for vulnerability assessment and network scanning.
- **Wetty**: A web-based SSH terminal accessible via a web browser.

## Getting Started

To set up the lab environment on your machine, follow these steps:

### 1. Clone the Repository

git clone https://github.com/The-Team-Phoenix/PhoenixAcademy-NetSec_ThreatHunt_LAB.git
cd PhoenixAcademy-NetSec_ThreatHunt_LAB

### 2. Run the LAB

Use Docker Compose to build and start the containers. Simply run the following command in the project directory:

docker compose up

### 3. Access the Web-Based Jump Host
Once the containers are up and running, you can access the jump host via the web-based terminal at:

http://localhost:3000

Username: jumpuser
Password: password

From this terminal, you can SSH into the other containers.

### 4. Container Details

Each container hosts different services that you can interact with from the jump host:

#### DNS, Suricata, Tcpdump:

- Runs Suricata for network traffic analysis.
- Provides DNS service.
- SSH access via ssh -p 2221 jumpuser@localhost.

#### Nginx, Suricata, Tcpdump:

- Hosts an Nginx web server.
- Runs Suricata for traffic monitoring.
- SSH access via ssh -p 2222 jumpuser@localhost.

#### Nikto, Nmap, Tcpdump:

- Includes Nikto and Nmap for vulnerability scanning.
- SSH access via ssh -p 2223 jumpuser@localhost.

### 5. Stopping the Lab

To stop the lab, simply run:

docker compose down

This will stop and remove the running containers.


### 6. Requirements

- Docker 20.10+ and Docker Compose v2.x.
- 2 GB of free memory and at least 5 GB of disk space.

### 7. Contributions
Feel free to contribute to this repository by opening issues or submitting pull requests.

### 8. License
This project is licensed under the MIT License
