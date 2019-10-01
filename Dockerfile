FROM rocker/rstudio

MKDIR /home/rstudio/github

COPY * /home/rstudio/github

CMD ["/init"]
