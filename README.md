# Docker image repository for Princeton Optimization classes

- ORF307: Optimization (undergraduate)
- ORF522: Linear and Nonlinear Optimization (graduate)

## Installation

### Install docker

Install docker Desktop from [here](https://docs.docker.com/get-docker/)

### Pull image from dockerhub
To pull the image from [dockerhub](https://hub.docker.com/r/bstellato/optimization-docker) run
```bash
docker pull bstellato/optimization-docker:latest
```

## Run
To run this image simply execute the following commands

### Run Docker image
#### Mac and Linux
- From the Mac or Linux terminal run:
  ```bash
  docker run -it --rm -p 8888:8888 -v $HOME:/home/jovyan/work optimization-docker
  ```

#### Windows
- From the Windows command prompt run
  ```
  docker run -v %USERPROFILE%:/home/jovyan/work -p 8888:8888 optimization-docker
  ```

### Open browser
You will see an output until something similar to

>     To access the server, open this file in a browser:
>         file:///home/jovyan/.local/share/jupyter/runtime/jpserver-7-open.html
>     Or copy and paste one of these URLs:
>         http://feed7340e75f:8888/lab?token=27924055XXXXXX
>         http://127.0.0.1:8888/lab?token=2792XXXXXXXX

Copy the last link starting with `http://127...` into your web browser and your are ready to go!

## Build
To build the image run 
```bash
docker build --rm --tag optimization-docker .
```