cp -rf 10.6/* .
docker buildx build . --output type=docker,name=elestio4test/mariadb:10.6 | docker load
