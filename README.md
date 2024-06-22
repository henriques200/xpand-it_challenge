# XpandIT Challenge
This project objective is to create a Apache Tomcat 8.5 web app on a Docker container with SSL.

## Requirements
You need to have Docker installed on your machine. You can check [here](https://docs.docker.com/engine/install/).

## Requirements (Optional)
If you prefer to use Docker Compose, you can check how to install [here](https://docs.docker.com/compose/install/).

## How to execute
You can execute using the docker, docker-compose or using the provided script.
> [!NOTE]
> You might need administration permissions to run the following commands.

### With the Docker command
#### First build the image
```bash
docker build -t tomcat_server_img ./web
```
#### Then create the container
```bash
docker run -dit --name tomcat_server -p 4041:4041 tomcat_server_img
```

### With Docker Compose
#### Run the command
```bash
docker compose up -d --build
```
### With the provided script
#### Run the command
```bash
sudo ./run_tomcat.sh
```

## Files
```bash
.
├── docker-compose.yml  # Docker Compose file
├── README.md           # This project Readme
├── run_tomcat.sh       # Linux script to run the container using the docker command
├── setup_docker.sh     # Setup docker on CentOS
└── web                 # Web app specific files
    ├── certs           # Web app certs
    └── Dockerfile      # Web app Dockerfile
```
