FROM enix/revealjs:1 as develop

COPY www/ ./

FROM nginx

COPY --from=develop /reveal.js /usr/share/nginx/html