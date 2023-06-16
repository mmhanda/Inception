FROM debian:buster

RUN apt -y update && apt -y install wget

COPY ./tools/installer.sh ./
RUN chmod 777 installer.sh
EXPOSE 9000

CMD [ "./installer.sh" ]