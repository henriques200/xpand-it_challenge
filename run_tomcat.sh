#!/bin/bash
sudo docker build -t tomcat_server_img ./web
sudo docker run -dit --name tomcat_server -p 4041:4041 tomcat_server_img
