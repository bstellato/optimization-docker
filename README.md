# Docker image repository for Princeton Optimization classes

- ORF307: Optimization (undergraduate)
- ORF522: Linear and Nonlinear Optimization (graduate)


## Run
To run this image simply execute the following commands

- On Mac or Linux
```bash
docker run -it --rm -p 8888:8888 -v $HOME:/home/jovyan/work optimization-docker
```

- On Windows


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