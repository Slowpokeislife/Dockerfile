FROM jupyter/datascience-notebook:latest

USER root

RUN apt-get update && \
    apt-get install -y git wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


USER $NB_USER


CMD ["start-notebook.sh"]
