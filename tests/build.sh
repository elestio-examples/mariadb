cp -rf 11.0/* .
docker buildx build . --output type=docker,name=elestio4test/mariadb:11.0 | docker load
