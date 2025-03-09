# Dockerfile
FROM docker:latest

# Install nano, curl and remove vi
RUN apk add --no-cache nano curl && apk del vim vi

# Enable Docker-in-Docker
RUN dockerd-entrypoint.sh &

CMD ["sh"]

