# Docker image repository for Princeton Optimization classes

- ORF307: Optimization (undergraduate)
- ORF522: Linear and Nonlinear Optimization (graduate)

## Installation

### Install docker

- Install docker Desktop from [here](https://docs.docker.com/get-docker/)

### Pull image from dockerhub
To pull the image from [dockerhub](https://hub.docker.com/r/bstellato/optimization-docker) run
```bash
docker pull bstellato/optimization-docker:main
```

## Run Docker image

### Using Docker Compose (Recommended)
The easiest way to run this image is using Docker Compose:

1. Make sure you have Docker Compose installed (it comes with Docker Desktop)
2. Run one of the following commands:

   **On Mac/Linux:**
   ```bash
   ./start_jupyter.sh
   ```

   **On Windows:**
   ```
   start_jupyter.bat
   ```

This will start Jupyter Lab in the background with minimal output and provide you with the connection link.

### Using Docker directly

#### Mac and Linux
- From the Mac or Linux terminal run:
  ```bash
  docker run -it --rm -p 8888:8888 -v $HOME:/home/jovyan/work bstellato/optimization-docker:main
  ```

#### Windows
- From the Windows command prompt run
  ```
  docker run -v %USERPROFILE%:/home/jovyan/work -p 8888:8888 bstellato/optimization-docker:main
  ```


### Open browser

Open the link [http://127.0.0.1:8888/lab](http://127.0.0.1:8888/lab) and you will have the Jupyterlab session running. Remember to shut it down `File -> Shut Down` when you are done.


## I am getting an error running the image!
If you are getting an error running the image (e.g., "port is already allocation") you should kill the existing docker containers.

### Using Docker Compose
If you're using Docker Compose, you can stop all containers with:
```bash
docker compose down
```

Both start scripts (shell script for Mac/Linux and batch file for Windows) display this command when you start the server.

### Using Docker directly
You can see running containers by running `docker ps`.

You will see the docker containers as follows:

```
CONTAINER ID   IMAGE                 COMMAND                  CREATED         STATUS                   PORTS                    NAMES
db8b31714ae7   optimization-docker   "tini -g -- start.sh…"   3 minutes ago   Up 3 minutes (healthy)   0.0.0.0:8888->8888/tcp   pedantic_haslett
```

Take the name of the container you would like to close and run, in this case, `docker kill pedantic_haslett`.

## To build the image (not necessary for the class)
To build the image run 
```bash
docker build --rm --tag bstellato/optimization-docker .
```
