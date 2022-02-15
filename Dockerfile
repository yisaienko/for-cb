FROM alpine:3.14

LABEL maintainer="3123123"

RUN apk update \
	&& apk upgrade \
	&& apk add nginx \
	&& apk add bash
	
COPY ./*.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]