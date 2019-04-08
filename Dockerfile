FROM enix/revealjs:1 as develop

COPY www/ ./

FROM nginx

EXPOSE 5000

COPY --from=develop /reveal.js /usr/share/nginx/html