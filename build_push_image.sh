#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 chaidararia/item-app:v1

# Login ke Docker Hub
docker login

# Push image ke Docker Hub
docker push chaidararia/item-app:v1
