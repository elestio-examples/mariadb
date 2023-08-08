cp -rf 10.11/* .
docker buildx build . --output type=docker,name=elestio4test/mariadb:10.11 | docker load
