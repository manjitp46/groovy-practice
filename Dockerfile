# Start with a base image that includes necessary tools
FROM ubuntu:24.04

# Set non-interactive mode for apt-get to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    software-properties-common \
    git \
    apt-transport-https \
    ca-certificates

# Install Node.js 20.x
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

# Install Java 11
RUN apt-get install -y openjdk-21-jdk

# Verify installations
# RUN node -v && npm -v && java -version && git --version

# Install cdxgen globally using npm
RUN npm install -g @cyclonedx/cdxgen

WORKDIR /app

CMD []

