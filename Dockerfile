FROM strapi/base

RUN yarn global add strapi

WORKDIR /srv/app

VOLUME ["/srv/app"]

COPY docker-entrypoint.sh /usr/local/bin

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["strapi","develop"]
