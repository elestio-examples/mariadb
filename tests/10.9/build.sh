cp -rf 10.9/* .
docker buildx build . --output type=docker,name=elestio4test/mariadb:10.9 | docker load
