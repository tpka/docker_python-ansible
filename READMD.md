# Ansible on Docker 
A simple docker container includes ansible and pyvmomi. \
This can be useful for administrating VMware platform by ansible.

## Requiremt:
- [Docker Desktop](https://docs.docker.com/engine/install/)
- working directories below are included in docker-compose.yml. Please modify if needed(or create link :) 
    - ~/git
    - ~/.ssh


## Usage

- to build container and execute bash in the container
```
docker compose up -d --build
docker exec -it python-ansible bash
```
- to stop & delete container
```
docker stop python-ansible
docker rm  python-ansible

OR 

docker compose down
```

## File Structure
```
.
├── Dockerfile
├── READMD.md
└── docker-compose.yml
```
