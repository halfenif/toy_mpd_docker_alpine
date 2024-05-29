#docker builder prune -af
#docker image prune -af
#docker pull alpine:latest
podman build --tag toy_mpd_docker_alpine .


podman container stop mpd01
podman container stop mpd02

podman container rm mpd01
podman container rm mpd02

podman-compose up --detach