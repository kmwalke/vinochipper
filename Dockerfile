FROM ruby:2.7.1
LABEL maintainer="kent@slaymakercellars.com"

WORKDIR /app

RUN echo " \
  alias ls='ls --color=auto' \n\
  " >> ~/.bashrc
