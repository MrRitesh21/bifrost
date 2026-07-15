FROM maximhq/bifrost:latest

# Copy the config.json database connection settings into the container
COPY config.json ./config.json

EXPOSE 10000

ENV APP_HOST=0.0.0.0
ENV APP_PORT=10000

CMD ["./bifrost", "-app-dir", "."]
