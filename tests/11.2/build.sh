cp -rf 11.2/* .
docker buildx build . --output type=docker,name=elestio4test/mariadb:11.2 | docker load
