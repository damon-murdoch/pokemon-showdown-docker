# Move to the pokemon showdown directory
cd /pokemon-showdown

# Pull the latest version of the repository
git pull origin master

# Attempt to move example files
mv -vn config_backup/* config

# Run the pokemon showdown server
node pokemon-showdown
