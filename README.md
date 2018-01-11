# Lean Gaming - factorio

[![Build Status](https://travis-ci.org/leangaming/factorio.svg?branch=master)](https://travis-ci.org/leangaming/factorio)
[![Docker Hub](https://img.shields.io/docker/pulls/leangaming/factorio.svg)](https://hub.docker.com/r/leangaming/factorio)

## factorio

> [factorio](https://www.factorio.com/) is a game in which you build and maintain factories.

This image contains the headless server version of factorio.

## docker-compose

An easy of getting this up and running is to just use [`docker-compose`](https://docs.docker.com/compose/overview/) with the following contents in your `docker-compose.yml` file:

```
factorio:
  image: leangaming/factorio
  ports:
    - 34197:34197/udp
  volumes:
    - ./factorio/saves:/home/factorio/factorio/saves
    - ./factorio/data:/home/factorio/factorio/data
```

## Lean Gaming?

LeanGaming aims to provide small (lean) docker images to run prebuilt dedicated servers for various video games. You can find all of our images and source code [here](https://github.com/leangaming).
