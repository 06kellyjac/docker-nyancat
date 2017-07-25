[![Docker Stars](https://img.shields.io/docker/stars/06kellyjac/nyancat.svg?style=flat-square)](https://hub.docker.com/r/06kellyjac/nyancat/)
[![Docker Pulls](https://img.shields.io/docker/pulls/06kellyjac/nyancat.svg?style=flat-square)](https://hub.docker.com/r/06kellyjac/nyancat/)
[![Docker Build Statu](https://img.shields.io/docker/build/06kellyjac/nyancat.svg?style=flat-square)](https://hub.docker.com/r/06kellyjac/nyancat/)

# Supported tags and respective `Dockerfile` links

- `latest`
  - Dockerhub: [(latest/alpine/Dockerfile)](https://hub.docker.com/r/06kellyjac/nyancat/~/dockerfile/)
  - GitHub: [(latest/alpine/Dockerfile)](https://github.com/06kellyjac/docker-nyancat/blob/master/Dockerfile)

# Quick reference

- **Where to get help:** [I have contact details on my Github](https://github.com/06kellyjac), [the Docker Community Forums](https://forums.docker.com/), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack/), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

- **Where to file issues:** [https://github.com/06kellyjac/docker-nyancat/issues](https://github.com/06kellyjac/docker-nyancat/issues)

- **Maintained by:** [06kellyjac on Github](https://github.com/06kellyjac)

- **Source of this description:** [The github README.md](https://github.com/06kellyjac/docker-nyancat/blob/master/README.md) ([history](https://github.com/06kellyjac/docker-nyancat/commits/master/README.md))

# What is Nyancat?

Nyancat is pretty cool. The goal of this project was to make a lightweight image for Nyancat. This is a light Docker Image that's around 2MB (compressed) for terminal Nyancat.

Thanks go to [Klange](https://github.com/klange/) and [contributors](https://github.com/klange/nyancat/graphs/contributors) on Github for the nyancat source.

The source used in this image:
[https://github.com/klange/nyancat](https://github.com/klange/nyancat)

# How to use this image.

It's simple, just run the following in your terminal:

```bash
docker run -it --rm --name nyancat 06kellyjac/nyancat
```

This command will create a docker container named `nyancat` that will remove its self when closed so you don't have to worry about running `docker rm nyancat` or anything.

To exit press `Ctrl+C`

# Licence

View [licence information](http://otm.illinois.edu/disclose-protect/illinois-open-source-license) for the software contained in this image.

View [licence information](https://mit-license.org/) for the container setup.