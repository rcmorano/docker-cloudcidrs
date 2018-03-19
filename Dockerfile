FROM zamora/r-devtools

RUN echo 'devtools::install_git("https://github.com/cloudyr/cloudcidrs.git")' | /usr/bin/Rscript -

ADD ./assets /assets

RUN chmod +x /assets/bin/entrypoint

ENTRYPOINT ["/assets/bin/entrypoint"]
