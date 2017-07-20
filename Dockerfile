FROM alpine:3.6

ENV NYANCAT_VERSION 1.5.1

# Installing Build Dependencies
RUN apk add --no-cache --virtual .build-deps \
	gcc \
	libc-dev \
	make \
	openssl

# Building Nyancat
RUN wget -q "https://github.com/klange/nyancat/archive/$NYANCAT_VERSION.tar.gz" \
	&& tar -xf "$NYANCAT_VERSION.tar.gz" \
	&& cd "nyancat-$NYANCAT_VERSION" \
	&& make \
	&& mv src/nyancat /usr/local/bin/nyancat \
	&& cd .. \
	&& rm -rf "nyancat-$NYANCAT_VERSION"

# Removing Build Dependencies
RUN apk del .build-deps

CMD ["sh", "-c", "nyancat"]