###### Table of contents

<!-- toc -->

- [Introduction](#introduction)
  * [But I already have a working envrionment!](#but-i-already-have-a-working-envrionment)
- [Requirements](#requirements)
  * [Installing requirements on OSX](#installing-requirements-on-osx)
  * [Installing requirements on Linux](#installing-requirements-on-linux)
  * [Installing requirements on Windows](#installing-requirements-on-windows)
- [Getting started](#getting-started)
  * [Command groups](#command-groups)
- [Best practices](#best-practices)
  * [Send your logs to the `logs/` folder when bind-mounting services](#send-your-logs-to-the-logs-folder-when-bind-mounting-services)
  * [Use envrionment variables to configure things](#use-envrionment-variables-to-configure-things)
- [FAQ](#faq)
  * [Where are my logs?](#where-are-my-logs)
- [Contributing](#contributing)
  * [Documentation](#documentation)

<!-- tocstop -->

# Introduction
This is a template that represents a development pattern I've used to develop
and manage docker-based microservices. It provides several benefits:

  * Normalize all the commands from your apps, front-end utils, docker, and
more into simple makefile targets.
  * No installation of software on your development machine. Uses docker images
wherever possible.
  * Manage as many separate repositories as you like without the need for submodules.
  * Easily extend automation and functionality via makefiles.
  * Encourage the development of 12-factor apps and stateless services
  * Configuration via environment variables

## But I already have a working envrionment!
Great! You should be able to link your code without too much trouble. Or maybe
now would be a good time to start thinking about how to dockerize it.

# Requirements
There are some minimum requirements before you can get started with this:

 * `make` from the GNU utils.
 * `docker` and `docker-compose`, available from Docker.com (See install instructions)
 * ssh keypairs installed in your `~/.ssh` folder and uploaded to your hosted 
git services (github, bitbucket, gitlab, etc)

## Installing requirements on OSX
  1. Get xcode command line tools with `xcode-select --install`. Confirm with
     dialogues and you are on your way.
  2. Install docker from here (https://docs.docker.com/docker-for-mac/)
  3. Ready to go!

## Installing requirements on Linux
This document assumes you are on a Debian/Ubuntu based system.

  1. Install development-essentials with `sudo apt-get update && sudo apt-get install build-essential`
  2. Installing docker
    * On Ubuntu: https://docs.docker.com/engine/installation/linux/ubuntulinux/
    * On Debian: https://docs.docker.com/engine/installation/linux/debian/
  3. Ready to go!

## Installing requirements on Windows
TODO (if we need it)

# Getting started
Once you have the requirements in place we can begin:

  1. `git clone REPO_URL`
  1. Copy `env.sample` to `env`
  1. Configure environment variables (see below)
  1. run `make bootstrap` to standup a development environment

## Command groups
There are a lot of commands, and they are broken down into groups:

  * **Bootstrap** : Create new development environments or link your existing
ones into docker

# Best practices

## Send your logs to the `logs/` folder when bind-mounting services
It is a good idea to collect all of your logfiles into one place when 
developing. Make sure you name them properly so that you know which
logfile belongs to which service.

For example:

## Use envrionment variables to configure things
Using environment variables to configure you apps provides a number of 
benefits:

  * Security - no secrets are stored in your repository. This help prevent
leaking sensitive information outside of trusted places.
  * Efficiency - devs are lazy! All settings in one file is better than 
multiple settings in multiple files.
  * Visibility - you can get a pretty good idea of all the external and
internal services required to stand up the entire infrastructure.
  * Testability - When testing (you have tests, right?) you can set 
variables to isolate services.

# FAQ

## Where are my logs?
Logs for nginx, php, and mysql queries are appear in `logs/` folder.

# Contributing

## Documentation
If you update the readme then please make sure to run `make readme-toc` to
regenerate the table of contents at the top of the file

