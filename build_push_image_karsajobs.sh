#!/bin/bash
docker build -t chaidararia/karsajobs:latest .
echo $PASSWORD_DOCKER_HUB | docker login -u chaidararia --password-stdin
docker push chaidararia/karsajobs:latest
