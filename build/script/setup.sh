# Make the server directory
mkdir pokemon-showdown

# Enter the directory
cd pokemon-showdown

# Create a git repository
git init .

# Set the remote repository to the showdown repository
git remote add origin https://www.github.com/smogon/pokemon-showdown.git

# Pull the latest version of the software
git pull origin master

# Backup the config folder to config_backup
mv config config_backup

# This is done so we can move the template files to the new folder if required

# Move back to the root directory
cd /
