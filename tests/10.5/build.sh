cp -rf 10.5/* .
docker buildx build . --output type=docker,name=elestio4test/mariadb:10.5 | docker load
