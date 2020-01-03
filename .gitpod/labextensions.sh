#!/bin/bash -l

conda activate pycon2019

NODE_OPTIONS=--max_old_space_size=4096 \
    jupyter labextension install \
        @jupyter-widgets/jupyterlab-manager \
        jupyter-threejs \
        ipyvolume bqplot \
        @jupyterlab/geojson-extension \
        @jupyterlab/fasta-extension \
        jupyterlab-toc \
        jupyter-leaflet \
        @jupyter-widgets/jupyterlab-sidecar \
        jupyterlab-drawio

jupyter lab build