# Using Python Slim-Buster
FROM biansepang/weebproject:buster

# Clone repo and prepare working directory
RUN git clone -b master https://github.com/yayanksenpai/WeebProject-Clever /home/weebproject/ \
    && chmod 777 /home/weebproject \
    && mkdir /home/weebproject/bin/

# Copies config.env (if exists)
COPY ./sample_config.env ./config.env* /home/weebproject/

# Setup Working Directory
WORKDIR /home/weebproject/

# Some useless stuff to install
RUN pip3 install flask
RUN pip3 install flask_restful

# Finalization
# CMD ["python3","-m","userbot"]
# It turns out that python slim-buster is based on Debian, it supports bash, so let's use it
CMD ["bash","start.sh"]
