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
# WIP, I don't know whether the docker base has bash or not, but we'll see
CMD ["bash","start.sh"]
