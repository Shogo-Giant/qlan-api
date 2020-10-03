FROM ruby:2.7.1-alpine

RUN apk update --no-cache && \
  apk add build-base \
          gmp-dev \
          libxslt-dev \
          libxml2-dev \
          libcurl \
          mysql-client \
          mysql-dev \
          tzdata \
          curl \
          bash

RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

WORKDIR /myapp

COPY Gemfile Gemfile.lock /myapp/
RUN gem update bundler && bundle install -j4

COPY . /myapp

EXPOSE 3001
