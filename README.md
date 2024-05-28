# MPD for Dev MPD Client

## Feature
- alpine linux + MPD
- 2 MPD service MPD01, MPD02
- no alsa support (look mpd.conf > audio_output)

## Installation
**Requirements**
- Docker, Docker-Compose or Podman

### Clone
```bash
git clone https://github.com/halfenif/toy_mpd_docker_alpine.git
```

### Set MP3 Folder
Default folder path **'~/music/folder_target'**
change docker-compose.yml file

### Set MPD Port (Option)
- MPD01: 6601
- MPD02: 6602
change docker-compose.yml file

## Build
```bash
./rebuild.sh
```

## Description
Streamlit으로 MPD Client를 개발하기 위해 복수의 MPD가 필요해서 구성한 Docker환경입니다.
This is a Docker environment created because multiple MPDs are needed to develop an MPD Client with Streamlit.

