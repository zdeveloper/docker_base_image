FROM ubuntu:15.10

# Update package manager sources
RUN apt-get update

# Install curl and build-essentials
RUN apt-get install --force-yes -y curl build-essential

# Installing node js
RUN curl -sL https://deb.nodesource.com/setup_0.10 | bash -
RUN apt-get install -y nodejs

# Installing meteor
RUN curl https://install.meteor.com/ | sh
