FROM postgres:16

RUN apt-get update && \
    apt-get install -y locales && \
    sed -i '/ko_KR.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen

ENV LANG ko_KR.UTF-8
ENV LC_ALL ko_KR.UTF-8
