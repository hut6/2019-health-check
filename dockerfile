FROM nginx:alpine

RUN apk --no-cache add curl

COPY index.html /usr/share/nginx/html/

COPY health-check /health-check

HEALTHCHECK --retries=3 --interval=10s CMD chmod +x /health-check && /health-check
