FROM node:slim

# Set the working directory
WORKDIR /pterostats

# Copy all files from the host directory to the container
COPY . .

# Create a hardlink to config.yml for mounting to host
RUN mkdir /pterostats_config

# Run the application
ENTRYPOINT ["/pterostats/entrypoint.sh"]
CMD npm install; node index
