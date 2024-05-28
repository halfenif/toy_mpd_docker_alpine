FROM alpine:latest

USER root

# if "certificate verify failed:ssl"
RUN sed 's/https/http/g' -i /etc/apk/repositories

# insall package
RUN apk add --no-cache --update mpd mpc

#Change mpd.conf
RUN rm /etc/mpd.conf
COPY mpd.conf /etc/mpd.conf

RUN mkdir /var/lib/mpd/data

RUN touch /var/lib/mpd/data/database
RUN touch /var/lib/mpd/data/state
RUN touch /var/lib/mpd/data/sticker.sql

RUN chown -R mpd:audio /var/lib/mpd
RUN chown -R mpd:audio /etc/mpd.con*

VOLUME /var/lib/mpd
WORKDIR /var/lib/mpd
EXPOSE 6600 8000

CMD ["/usr/bin/mpd", "--no-daemon", "--stdout", "/etc/mpd.conf"]