FROM node:8

EXPOSE 8000


WORKDIR /
RUN git clone --depth 1 https://github.com/hakimel/reveal.js.git

WORKDIR /reveal.js
ENV NPM_CONFIG_LOGLEVEL info
RUN npm install

COPY www/index.html www/enix-domain.svg ./

CMD ["npm", "start"]