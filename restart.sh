#!/bin/bash

docker stop nestjs
docker run -d --rm -p 3000:3000 --name nestjs nestjs
