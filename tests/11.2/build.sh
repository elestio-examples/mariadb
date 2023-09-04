cp -rf 11.2/* .
sed -i "s~ARG REPOSITORY="http://archive.mariadb.org/mariadb-11.2.0/repo/ubuntu/ jammy main main/debug"~ARG REPOSITORY="https://archive.mariadb.org/mariadb-11.2.1/repo/ubuntu/ jammy main main/debug"~g" Dockerfile
sed -i "s~org.opencontainers.image.version="11.2.0" \~org.opencontainers.image.version="11.2.1" \~g" Dockerfile
sed -i "s~ARG MARIADB_VERSION=1:11.2.0+maria~ubu2204~ARG MARIADB_VERSION=1:11.2.1+maria~ubu2204~g" Dockerfile
docker buildx build . --output type=docker,name=elestio4test/mariadb:11.2 | docker load
