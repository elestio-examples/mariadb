cp -rf 11.2/* .
sed -i 's/11.2.0/11.2.1/g' Dockerfile
docker buildx build . --output type=docker,name=elestio4test/mariadb:11.2 | docker load
