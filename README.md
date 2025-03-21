# Docker image repository for Princeton Optimization classes

- ORF307: Optimization (undergraduate)
- ORF522: Linear and Nonlinear Optimization (graduate)

## Installation

### Install docker

- Install docker Desktop from [here](https://docs.docker.com/get-docker/)

### Get the startup files

**Option 1: Download individual files (recommended for beginners)**

You only need to download one file based on your operating system:

- **Windows users**: Download [Start-Jupyter-Windows.bat](https://raw.githubusercontent.com/bstellato/optimization-docker/main/Start-Jupyter-Windows.bat) (right-click and select "Save link as...")
- **Mac users**: Download [start-jupyter-mac.command](https://raw.githubusercontent.com/bstellato/optimization-docker/main/start-jupyter-mac.command) (right-click and select "Save link as...")
- **Linux users**: Download [start-jupyter-linux.desktop](https://raw.githubusercontent.com/bstellato/optimization-docker/main/start-jupyter-linux.desktop) (right-click and select "Save link as...")
- **All users**: Download [docker-compose.yml](https://raw.githubusercontent.com/bstellato/optimization-docker/main/docker-compose.yml) and save it in the same folder as your startup file

After downloading, you may need to:
- **Mac users**: Make the file executable with `chmod +x start-jupyter-mac.command` in Terminal
- **Linux users**: Make the file executable with `chmod +x start-jupyter-linux.desktop` in Terminal

**Option 2: Clone the repository (for Git users)**
```bash
git clone https://github.com/bstellato/optimization-docker.git
cd optimization-docker
```

### About the Docker image
This repository uses a Docker image from [dockerhub](https://hub.docker.com/r/bstellato/optimization-docker).

When using Docker Compose (recommended), the image will be automatically pulled the first time you run it.

If you prefer to use Docker directly, you can manually pull the image with:
```bash
docker pull bstellato/optimization-docker:main
```

## Run Docker image

### Using Docker Compose (Recommended)
The easiest way to run this image is using Docker Compose:

1. Make sure you have Docker Compose installed (it comes with Docker Desktop)
2. **Simply double-click** one of these files:

   **On Mac:**
   - Double-click the `start-jupyter-mac.command` file
   - If you get a security warning, go to System Preferences → Security & Privacy and click "Open Anyway"

   **On Windows:**
   - Double-click the `Start-Jupyter-Windows.bat` file

   **On Linux:**
   - Double-click the `start-jupyter-linux.desktop` file
   - If needed, right-click the file first, select Properties, and check "Allow executing file as program" in the Permissions tab
   - Some Linux distributions may require you to mark the file as trusted before executing

   **From the command line (alternative):**
   ```bash
   # Mac
   ./start_jupyter_mac.sh
   
   # Linux
   ./start_jupyter_linux_core.sh
   
   # Windows
   start_jupyter_windows.bat
   ```

This will start Jupyter Lab in the background, open your browser automatically, and provide you with the connection link.

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
