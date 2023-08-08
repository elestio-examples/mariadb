cp -rf 10.10/* .
docker buildx build . --output type=docker,name=elestio4test/mariadb:10.10 | docker load
