FROM continuumio/miniconda3

RUN addgroup --gid 33333 gitpod \
 && useradd --no-log-init --create-home --home-dir /home/gitpod --shell /bin/bash --uid 33333 --gid 33333 gitpod;

COPY environment.yml /environment.yml
RUN conda env create -f /environment.yml \
 && chown -R gitpod:gitpod /opt/conda/

COPY labextensions.sh /labextensions.sh
USER gitpod 
RUN conda init bash
RUN /labextensions.sh