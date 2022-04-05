FROM python:3.7

#install OS modules
RUN apt update -y && \
    apt install -y && \
    rm -rf /var/lib/apt/list/*

#copy source code
RUN mkdir -p /data-copier
COPY app /data-copier/app
COPY requirments.txt /data-copier

#install application depedencies
RUN pip install -r /data-copier/requirments.txt

