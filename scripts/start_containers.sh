!/bin/bash
set -e
cd /home/ec2-user/acebook
aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin 664047078509.dkr.ecr.eu-west-2.amazonaws.com
docker compose pull
docker compose up -d