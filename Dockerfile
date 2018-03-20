FROM zamora/r-devtools

RUN echo 'devtools::install_git("https://github.com/cloudyr/cloudcidrs.git")' | /usr/bin/Rscript -

ADD ./assets /assets

ENTRYPOINT ["/assets/bin/entrypoint"]
