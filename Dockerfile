FROM node:latest

WORKDIR /home/working
USER node
ENV PORT 3000

EXPOSE 3000

ENTRYPOINT /bin/bash
