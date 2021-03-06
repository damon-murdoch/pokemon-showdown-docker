# pokemon-showdown-docker
## A dockerized container for the Pokemon Showdown! Web Server
### Developed by Damon Murdoch ([@SirScrubbington](https://twitter.com/SirScrubbington))

#### THIS CONTAINER IS NOT OFFICIAL AND IS NOT RELATED TO THE DEV TEAM WHATSOEVER!
#### Full Credits to Pokemon Showdown! Go to Smogon, Zarel and the rest of the development team!
Repository Link: https://github.com/smogon/pokemon-showdown

### [Docker Hub Link](https://hub.docker.com/r/scrubbs/pokemon-showdown-docker)
### [Container Github Link](https://github.com/damon-murdoch/pokemon-showdown-docker)

## Description
A dockerized container for the Pokemon Showdown! Web Server. This container is build upon the standard nodejs docker library image, and pulls the latest version of the  Pokemon Showdown! server image when built. It also performs a pull request on each time launching the container to ensure your server stays up to date. This is my first docker container, so please feel free to let me know about any issues or improvements you would like to see :)

### Building the Container
The builder is currently only tested on Ubuntu Server 20.04, however it should work on other Unix-based operating systems.

1. Clone the repository
```
git clone https://github.com/damon-murdoch/pokemon-showdown-docker
```
2. Enter the 'build' directory
```
cd pokemon-showdown-docker/build
```
3. Run the 'build.sh' script file
```
./build.sh
```

### Launching the Container
Please see below for an example docker run configuration.

```
docker run -it -d \
  --name pokemon-showdown \
  -p 8000:8000 \
  -v /path-to-config/:/pokemon-showdown/config/ # Optional \
  scrubbs/pokemon-showdown-docker
```

#### Argument Key Table

| Argument     | Action | 
| ---------    | ------ |
| -p 8000:8000 | Server web interface. Can be mapped to any IP address externally. If you modify the port in the server settings, be sure to update the internal port here too. |
| -v /path-to-config/:/pokemon-showdown/config/ | Optional argument, allows configuration files to be modified and kept persistent across updates and server restarts. |

## Future Changes
A list of future planned changes are listed below.

| Change Description | Priority |
| ------------------ | -------- | 
| No planned changes | -        |

### Problems or improvements
If you have any suggested fixes or improvements for this project, please 
feel free to open an issue [here](https://github.com/damon-murdoch/pokemon-showdown-docker/issues).

