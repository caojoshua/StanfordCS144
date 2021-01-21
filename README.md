# StanfordCS144
Stanford CS 144 Introduction to Computer Networking

I never learned about computer networks, so I will be taking a self-guided course of [Stanford CS 144 Introduction to Computer Networking](https://cs144.github.io/). This repository holds the coding labs from the course.

The labs are run from a Docker container. This repository holds the Dockerfile and setup scripts. The labs are contained in a git submodule pointing to [my personal fork of the CS144 lab repository](https://github.com/caojoshua/StanfordCS144-sponge/).

## Prerequisites
* GNU Make
* Docker

## Setup
```
make docker image
make docker container
make
/setup_dev_env.sh
```
The setup script needs to be run manually because it requires manual keyboard input, which doesn't work well in the Docker build process.

After exiting the container, you can bash back into it with `make`. Subsequent bash into the container does not require running the setup script.

If the container is ever stopped (eg. after reboot), you can restore it with `make start-container`.
