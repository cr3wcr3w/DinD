# Dockerfile
FROM docker:latest

# Install nano, curl
RUN apk add --no-cache nano curl

# Remove vi if it exists
RUN if apk info | grep -q "vi"; then apk del vi; fi

# Enable Docker-in-Docker
RUN dockerd-entrypoint.sh &

CMD ["sh"]
