FROM nginx

LABEL   MAINTENER="ALIF ZULQORNAIN" \
        NIM="1122140130" \
        KELAS="KS TI"

COPY html /usr/share/nginx/html

EXPOSE 80 443