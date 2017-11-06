FROM minio/minio

EXPOSE 5555

RUN adduser -D -u 1000 dokku
USER dokku
WORKDIR /home/dokku

CMD ["server", "--address", ":5555", "/home/dokku/vault/data"]
