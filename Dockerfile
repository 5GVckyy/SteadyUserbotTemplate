# Using Python Slim-Buster
FROM xluxz/geezproject:buster
# VEGETA-USERBOT
# CuteInspire


RUN git clone -b Steady-Userbot https://github.com/5GVckyy/Steady-Userbot/root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/5GVckyy/SteadyUserbotTemplate/DEVS/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]


