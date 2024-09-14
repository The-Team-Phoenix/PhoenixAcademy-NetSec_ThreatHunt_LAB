FROM ubuntu:20.04

# Install Nikto and Nmap
RUN apt-get update && apt-get install -y \
    nikto \
    nmap \
    tcpdump

# Expose SSH port
EXPOSE 22

# Start SSH service
CMD ["service ssh start"]

