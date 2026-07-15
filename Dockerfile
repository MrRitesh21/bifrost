FROM maximhq/bifrost:latest

# Copy config.json to the correct APP_DIR folder (/app/data/) so Bifrost loads it
COPY config.json /app/data/config.json

EXPOSE 10000

# Configure port and host using environment variables which the entrypoint script reads
ENV APP_PORT=10000
ENV APP_HOST=0.0.0.0

# Using a single-argument CMD avoids the infinite loop bug in docker-entrypoint.sh
CMD ["/app/main"]
