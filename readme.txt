XpandIT Challenge
This project objective is to create a Apache Tomcat 8.5 web app on a Docker container with SSL.

Requirements
You need to have Docker installed on your machine.

Requirements (Optional)
If you prefer to use Docker Compose, you can check how to install.

How to execute
You can execute using the docker, docker-compose or using the provided script.
NOTE: You might need administration permissions to run the following commands.

- With the Docker command
  - First build the image: docker build -t tomcat_server_img ./web
  - Then create the container: docker run -dit --name tomcat_server -p 4041:4041 tomcat_server_img

- With Docker Compose
  - Run the command: docker compose up -d --build
