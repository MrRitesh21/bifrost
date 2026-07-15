FROM maximhq/bifrost:latest

EXPOSE 10000

ENV APP_HOST=0.0.0.0
ENV APP_PORT=10000

CMD ["./bifrost"]
