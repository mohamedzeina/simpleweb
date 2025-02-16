## Description
Simpleweb is a simple node server application made with Docker. A docker image is created using the node:14-alpine base image. 
The Node server files are then copied to the image's usr/app working directory. 


## How To Build & Run Locally
Make sure that you have Docker installed on your local machine   
First, clone the repo to your local machine:
```
git clone https://github.com/mohamedzeina/simpleweb.git
```
Then move into the project's directory:
```
cd simpleweb
```
Then, build the docker image using the following command with your docker username and a project name of your choice:
```
docker build -t {docker-username}/{project-name} .
```
Then, run the docker image  in a container using the following command to ensure port mapping:
```
docker run -p 8080:8080 {docker-username}/{project-name} 
```
Then, open http://localhost:8080 with your browser to see the result

Note: you should drop the {} when writing the docker-username and project-name



