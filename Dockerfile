# Starting Image

# Node Ver.18 Alpine
FROM node:18-alpine

# Default PS! Server Port
EXPOSE 8000

# Container Entrypoint
WORKDIR /app

# Copy the setup script
COPY . .

# Install Git Package
RUN ["apk", "add", "git"]

# Create a git repository
RUN ["git", "init", "."]

# Set the remote repository to the showdown repository
RUN ["git", "remote", "add", "origin", "https://www.github.com/smogon/pokemon-showdown.git"]

# Pull the latest version of the software
RUN ["git", "pull", "origin", "master"]

# Set the entry point of the dockerfile
ENTRYPOINT ["node", "pokemon-showdown"]

# Specify the -c switch on exec
CMD ["-c"]
