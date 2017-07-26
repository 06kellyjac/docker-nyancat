[![Docker Stars](https://img.shields.io/docker/stars/06kellyjac/nyancat.svg?style=flat-square)](https://hub.docker.com/r/06kellyjac/nyancat/) [![Docker Pulls](https://img.shields.io/docker/pulls/06kellyjac/nyancat.svg?style=flat-square)](https://hub.docker.com/r/06kellyjac/nyancat/) [![Docker Build Status](https://img.shields.io/docker/build/06kellyjac/nyancat.svg?style=flat-square)](https://hub.docker.com/r/06kellyjac/nyancat/)

# Supported tags and respective `Dockerfile` links

-	[`scratch`, `latest`: (*scratch/Dockerfile*)](https://github.com/06kellyjac/docker-nyancat/blob/master/scratch/Dockerfile)
-	[`alpine`: (*alpine/Dockerfile*)](https://github.com/06kellyjac/docker-nyancat/blob/master/alpine/Dockerfile)

The Docker file also visible on the Docker Hub page: [https://hub.docker.com/r/06kellyjac/nyancat/~/dockerfile/](https://hub.docker.com/r/06kellyjac/nyancat/~/dockerfile/)

# Quick reference

-	**Where to get help**:  
	[I have contact details on my Github](https://github.com/06kellyjac), [the Docker Community Forums](https://forums.docker.com/), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack/), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

-	**Where to file issues**:  
	[https://github.com/06kellyjac/docker-nyancat/issues](https://github.com/06kellyjac/docker-nyancat/issues)

-	**Maintained by**:  
	[06kellyjac on Github](https://github.com/06kellyjac)

-	**Source of this description**:  
	[The github README.md](https://github.com/06kellyjac/docker-nyancat/blob/master/README.md) ([history](https://github.com/06kellyjac/docker-nyancat/commits/master/README.md))

# What is Nyancat?

Nyancat is pretty cool. It's a poptart cat flying through space. 🐱‍🚀

> [wikipedia.org/wiki/Nyan_Cat](https://en.wikipedia.org/wiki/Nyan_Cat)

The goal of this project was to make a lightweight image for Nyancat.
There are two versions shipped:

- `latest` / `scratch`
  - **361KB Compressed**
    - built from `scratch` which is a special empty image
  - Uses a binary compiled from the nyancat source code: [source](https://github.com/klange/nyancat)
  - The binary runs on the Docker `scratch` image for absolute minimal size
    - The binary was compiled with `make SHARED=0 CC='gcc -static'` to get a static binary if you want to build this image yourself with the nyancat source for additional peace of mind! 😊
- `alpine`
  - **2MB Compressed** + the base alpine image 2MB
    - Built from `alpine` which is also 2MB Compressed for a total install of 4MB
    - If you have `alpine` cached *(which you probably do)* you will only be downloading the 2MB
  - Alpine is a very small version of linux and builds the source code from a zip provided here:
    - [https://github.com/klange/nyancat/releases](https://github.com/klange/nyancat/releases)

Thanks go to [Klange](https://github.com/klange/) and [contributors](https://github.com/klange/nyancat/graphs/contributors) on Github for the nyancat source.

The source used in this image:
[https://github.com/klange/nyancat](https://github.com/klange/nyancat)

# How to use this image.

It's simple, just run the following in your terminal:

Standard:
```bash
docker run -it --rm --name nyancat 06kellyjac/nyancat
```

Alpine:
```bash
docker run -it --rm --name nyancat 06kellyjac/nyancat:alpine
```

This command will create a docker container named `nyancat` that will remove its self when closed so you don't have to worry about running `docker rm nyancat` or anything.

To exit press `Ctrl+C`

# Licence

View [licence information](http://otm.illinois.edu/disclose-protect/illinois-open-source-license) for the software contained in this image.

View [licence information](https://mit-license.org/) for the container setup.
