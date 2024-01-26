FROM quay.io/jupyter/minimal-notebook:python-3.11.7

LABEL maintainer="Bartolomeo Stellato <bartolomeo.stellato@gmail.com>"

# Install C/C++ build + latex packages for correct fonts
USER root
RUN apt-get update && \
    apt-get install -y cm-super dvipng build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install from the requirements.txt file
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
RUN pip install --no-cache-dir --requirement /tmp/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# Switch back to jovyan to avoid accidental container runs as root
USER ${NB_UID}

CMD ["start-notebook.py", "--IdentityProvider.token=''"]