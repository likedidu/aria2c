FROM alpine

COPY ./content /workdir/

ENV PORT=7860
ENV PASSWORD=password
ENV TOKEN=/mypath
ENV ID=1408
ENV HOST=true

RUN apk add --no-cache caddy jq bash \
    && bash /workdir/install.sh \
    && rm /workdir/install.sh 

EXPOSE 7860

ENTRYPOINT ["sh", "entrypoint.sh"]