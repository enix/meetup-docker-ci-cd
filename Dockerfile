FROM node:8 as develop

EXPOSE 8000

WORKDIR /
RUN git clone --depth 1 https://github.com/hakimel/reveal.js.git

WORKDIR /reveal.js
ENV NPM_CONFIG_LOGLEVEL info
RUN npm install

COPY www/ ./

CMD ["npm", "start"]

FROM nginx

EXPOSE 5000

COPY --from=develop /reveal.js /usr/share/nginx/html