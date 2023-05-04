# pokemon-showdown-docker
## A dockerized container for the Pokemon Showdown! Web Server
### Developed by Damon Murdoch ([@SirScrubbington](https://twitter.com/SirScrubbington))

#### THIS CONTAINER IS NOT OFFICIAL AND IS NOT RELATED TO THE DEV TEAM WHATSOEVER!
#### Full Credits to Pokemon Showdown! Go to Smogon, Zarel and the rest of the development team!
Official Repository: [Link](https://github.com/smogon/pokemon-showdown)

### Other Links
Docker Hub: [Link](https://hub.docker.com/r/scrubbs/pokemon-showdown)
Docker Hub (Old Version): [Link](https://hub.docker.com/r/scrubbs/pokemon-showdown-docker)

Github: [Link](https://github.com/damon-murdoch/pokemon-showdown-docker)

## Description
A dockerized container for the Pokemon Showdown! Web Server. This container is build upon the Node v18 (Stable) Alpine image, and pulls the latest version of the Pokemon Showdown! server image when built.

## Usage
Please see below for an example docker configuration.

### Docker CLI

```
docker run -it -d \
  --name pokemon-showdown \
  -p 8000:8000 \
  -v /path-to-config/:/pokemon-showdown/config/ \
  scrubbs/pokemon-showdown
```

### Parameters

| Parameter | Function | 
| --------- | ------   |
| `--net=host` | Uses host networking instead of forwarding ports manually. |
| `-p 8000:8000` | Server web interface. Can be mapped to any port externally. If you modify the port in the server settings, be sure to update the internal port here too. |
| `-v /path-to-config/:/pokemon-showdown/config/` | Optional argument, allows configuration files to be modified and kept persistent across updates and server restarts. |

Please see below for an example docker run configuration.

### Problems or improvements
If you have any suggested fixes or improvements for this project, please 
feel free to open an issue [here](../issues).
