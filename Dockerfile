FROM alpine:3.6

ENV NYANCAT_VERSION 1.5.1

RUN apk add --no-cache --virtual .build-deps \
	openssl \
	make \
	gcc \
	libc-dev \
	&& wget -q "https://github.com/klange/nyancat/archive/$NYANCAT_VERSION.tar.gz" \
	&& tar -xf "$NYANCAT_VERSION.tar.gz" \
	&& cd "nyancat-$NYANCAT_VERSION" \
	&& make \
	&& mv src/nyancat /usr/local/bin/nyancat \
	&& cd .. \
	&& apk del .build-deps \
	&& rm -rf "nyancat-$NYANCAT_VERSION"
CMD ["sh", "-c", "nyancat"]