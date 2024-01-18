FROM ghcr.io/ihciah/telearia2:latest
COPY . .
RUN chmod +x config.sh && sh config.sh