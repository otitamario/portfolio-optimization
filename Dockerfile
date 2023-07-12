FROM jupyter/minimal-notebook:lab-3.6.3



COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

USER root

RUN apt-get update \
    && apt-get install -y glpk-utils \
    && apt-get install -y default-jre \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER jovyan
