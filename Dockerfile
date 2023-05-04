# Starting Image

# Node Ver.18 Alpine
FROM node:18-alpine

# Default PS! Server Port
EXPOSE 8000

# Copy the setup script
COPY scripts .

# Run the setup script
RUN ["/bin/bash", "setup.sh"]

# Set the entry point of the dockerfile
ENTRYPOINT ["/bin/bash", "run.sh"]

# Specify the -c switch on exec
CMD ["-c"]
