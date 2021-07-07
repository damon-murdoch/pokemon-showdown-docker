# pokemon-showdown-docker
## A dockerized container for the Pokemon Showdown! Web Server
### Developed by Damon Murdoch ([@SirScrubbington](https://twitter.com/SirScrubbington))

## Description
A dockerized container for the Pokemon Showdown! Web Server. This container is build upon the standard nodejs docker library image, and pulls the latest version of the  Pokemon Showdown! server image when built. It also performs a pull request on each time launching the container to ensure your server stays up to date. 

### Building the Container



### Launching the Container

```
#!/bin/bash
docker run -it -d \
  --name pokemon-showdown \
  -p 8000:8000 \
  -v /path-to-config/:/pokemon-showdown/config/ # Optional \
  scrubbs/pokemon-showdown-docker
```

| Argument     | Action | 
| ---------    | ------ |
| -p 8000:8000 | Server web interface. Can be mapped to any IP address externally. If you modify the port in the server settings, be sure to update the internal port here too. |
| -v /path-to-config/:/pokemon-showdown/config/ | Optional argument, allows configuration files to be modified and kept persistent across updates and server restarts. |

### Full Credits to Pokemon Showdown! Go to Smogon, Zarel and the rest of the development team!
Repository Link: https://github.com/smogon/pokemon-showdown

## Future Changes
A list of future planned changes are listed below.

| Change Description | Priority |
| ------------------ | -------- | 
| No planned changes | -        |

### Problems or improvements
If you have any suggested fixes or improvements for this project, please 
feel free to open an issue [here](issues).

