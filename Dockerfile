FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.8.0

RUN gem install epzip --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["epunzip"]
CMD ["--help"]
