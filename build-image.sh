#!/bin/bash

docker stop sftp_palyx-sftp_1
docker rm  sftp_palyx-sftp_1
docker images | grep  palyx-sftp | awk '{print $3}' | head -1 | xargs docker rmi 
docker build -t atmoz/palyx-sftp .

