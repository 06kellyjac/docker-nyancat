FROM alpine:latest AS builder
ENV NYANCAT_VERSION 1.5.1
RUN \
	apk add --no-cache --virtual .build-deps \
		gcc libc-dev make openssl upx &&\
	cd /tmp &&\
	wget -q "https://github.com/klange/nyancat/archive/$NYANCAT_VERSION.tar.gz" &&\
	tar -xf "$NYANCAT_VERSION.tar.gz" &&\
	cd "nyancat-$NYANCAT_VERSION" &&\
	make SHARED=0 CC='gcc -static -s' &&\
	strip -S -s --strip-unneeded \
		-R .gnu.hash \
		-R .dynsym \
		-R .dynstr \
		-R .plt \
		-R .plt.got \
		-R .eh_frame_hdr \
		-R .eh_frame \
		-R .data.rel.ro \
		-R .comment \
		src/nyancat &&\
	upx --ultra-brute src/nyancat &&\
	mv src/nyancat /nyancat && cd / &&\
	apk del .build-deps &&\
	rm -rf \
		/tmp/* \
		/root/.ash_history \
		/var/cache/misc/*

FROM scratch
LABEL maintainer="dev+docker_nyancat@j-k.io"
COPY --from=builder /nyancat /nyancat
CMD [ "/nyancat" ]
