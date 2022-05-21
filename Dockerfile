FROM memcached:alpine

COPY . /tmp/

USER root
RUN chmod -R 777 /tmp

RUN apk add python3 && \
    apk add py3-pip && \
    #pip3 install python-memcached
    pip3 install pymemcache

USER memcache
CMD ["memcached"]