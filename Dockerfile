FROM php:7.4-cli
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Elkyw/Arashi && cp -r Arashi /usr/src/arashi
WORKDIR /usr/src/arashi
CMD [ "php", "./arashi.php", "<<<","$'fix'" ]
CMD [ "php", "./arashi.php", "<<<","$'update'" ]
CMD [ "php", "./arashi.php" ]
