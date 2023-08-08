cp -rf 11.1/* .
docker buildx build . --output type=docker,name=elestio4test/mariadb:11.1 | docker load
