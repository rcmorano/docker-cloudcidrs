FROM zamora/r-devtools

ARG BUILD_TIMESTAMP=201903301920

RUN echo 'devtools::install_git("https://github.com/cloudyr/cloudcidrs.git")' | /usr/bin/Rscript -

ADD ./assets /assets

ENTRYPOINT ["/assets/bin/entrypoint"]
