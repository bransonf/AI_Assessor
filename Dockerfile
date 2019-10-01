FROM rocker/rstudio

RUN mkdir /home/rstudio/github

COPY * /home/rstudio/github/

CMD ["/init"]
