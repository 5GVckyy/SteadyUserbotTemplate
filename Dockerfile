# Using Python Slim-Buster
FROM vckyouuu/geezproject:buster


RUN git clone -b Vegeta-Userbot https://github.com/Randi356/Vegeta-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Randi356/Vegeta-Old2/DEVS/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]

