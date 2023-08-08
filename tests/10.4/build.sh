cp -rf 10.4/* .
docker buildx build . --output type=docker,name=elestio4test/mariadb:10.4 | docker load
