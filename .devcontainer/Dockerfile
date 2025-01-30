# Use Ubuntu 20 as base image
FROM ubuntu:20.04

# Set noninteractive mode for apt (avoids prompts)
ENV DEBIAN_FRONTEND=noninteractive

# Update & install dependencies
RUN apt update && apt upgrade -y && \
    apt install -y openjdk-17-jdk wget curl git sudo unzip && \
    apt clean

# Set JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Install Jenkins
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add - && \
    echo "deb https://pkg.jenkins.io/debian-stable binary/" | tee /etc/apt/sources.list.d/jenkins.list && \
    apt update && apt install -y jenkins && \
    apt clean

# Expose Jenkins port
EXPOSE 8080

# Set workspace directory
WORKDIR /workspaces
