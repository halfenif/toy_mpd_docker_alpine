docker builder prune -af
docker image prune -af
docker pull alpine:latest
docker build --tag toy_mpd_docker_alpine .


docker container stop mpd01
docker container stop mpd02

docker container rm mpd01
docker container rm mpd02

docker-compose up --detach