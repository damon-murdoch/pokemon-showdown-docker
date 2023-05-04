# Starting Image

# Node Ver.18 Alpine
FROM node:18-alpine

# Default PS! Server Port
EXPOSE 8000

# Container Entrypoint
WORKDIR /app

# Install Git Package
RUN ["apk", "add", "git"]

# Create a git repository
RUN ["git", "init", "."]

# Set the remote repository to the showdown repository
RUN ["git", "remote", "add", "origin", "https://www.github.com/smogon/pokemon-showdown.git"]

# (Entry Point) Update the server repository and start the server
ENTRYPOINT ["git" "pull" "origin" "master" "&&" "node", "pokemon-showdown"]

# Specify the -c switch on exec
CMD ["-c"]
