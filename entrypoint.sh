#!/bin/bash

# Check if config.yml exists on the host, if not then create it
if [ ! -f "/pterostats_config/config.yml" ]; then
    # Copy config.yml from the container to the host
    cp /pterostats/config.yml /pterostats_config/config.yml
fi

# Copy updated config.yml from the host to the container
cp /pterostats_config/config.yml /pterostats/config.yml

# Execute the CMD from the Dockerfile
exec "$@"
