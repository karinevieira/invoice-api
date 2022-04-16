FROM ruby:2.5.8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /invoice-api
WORKDIR /invoice-api
ADD Gemfile /invoice-api/Gemfile
ADD Gemfile.lock /invoice-api/Gemfile.lock
RUN bundle install
ADD . /invoice-api