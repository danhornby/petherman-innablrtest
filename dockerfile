FROM ubuntu:20.04

# Installing Python 3.8
RUN apt-get update && \
        apt-get install -y software-properties-common vim && \
        add-apt-repository ppa:deadsnakes/ppa && \
        apt-get update -y  && \
        apt-get install -y build-essential python3.6 python3.6-dev python3-pip && \
        apt-get install -y git  && \
        # update pip
        python3.8 -m pip install pip --upgrade && \
        python3.8 -m pip install wheel

# Copying requirements.txt
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt
RUN python3 --version
COPY . /app

ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]




















