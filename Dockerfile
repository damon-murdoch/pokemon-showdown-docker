# Starting Image

# Node Ver.18 Alpine
FROM node:18-alpine

# Default PS! Server Port
EXPOSE 8000

# Container Entrypoint
WORKDIR /app

# Copy the setup script
COPY . .

# Run the setup script
RUN ["setup.sh"]

# Set the entry point of the dockerfile
ENTRYPOINT ["run.sh"]

# Specify the -c switch on exec
CMD ["-c"]
