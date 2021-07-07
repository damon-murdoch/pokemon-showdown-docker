# Starting Image

# Use the NodeJS Latest Image
FROM node:latest

# Default PS! Server Port
EXPOSE 8000

# Copy the setup script
COPY script/setup.sh .

# Run the setup script
RUN ["/bin/bash", "/setup.sh"]

# Copy the runtime script
COPY script/run.sh .

# Set the entry point of the dockerfile
ENTRYPOINT ["/bin/bash", "/run.sh"]

# Specify the -c switch on exec
CMD ["-c"]
