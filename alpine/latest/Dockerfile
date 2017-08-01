FROM alpine:latest
# Updates to the Official Alpine repo trigger a rebuild
LABEL maintainer="06kellyjac@googlemail.com"
ENV NYANCAT_VERSION 1.5.1
RUN apk add --no-cache --virtual .build-deps \
	gcc \
	libc-dev \
	make \
	openssl &&\
	cd /tmp &&\
	wget -q "https://github.com/klange/nyancat/archive/$NYANCAT_VERSION.tar.gz" &&\
	tar -xf $NYANCAT_VERSION.tar.gz &&\
	cd nyancat-$NYANCAT_VERSION &&\
	make &&\
	mv src/nyancat /usr/local/bin/nyancat &&\
	cd / &&\
	apk del .build-deps &&\
	rm -rf \
	/tmp/* \
	/root/.ash_history \
	/var/cache/misc/*
CMD nyancat