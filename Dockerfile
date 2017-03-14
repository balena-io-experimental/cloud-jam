# A small glibc/apt base image designed for use in containers
FROM bitnami/minideb

# Install dependencies
RUN apt-get update && apt-get install -yq --no-install-recommends \
	gcc-arm-none-eabi \
	libstdc++-arm-none-eabi-newlib && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

# Create the assets directory
RUN mkdir -p /assets

# Set the working directory
WORKDIR /usr/src/app

# Create a build directory
RUN mkdir -p build

# Copy everything to the working directory
COPY . .

# Compile
RUN ./compile && \
	mv build/main.hex /assets
