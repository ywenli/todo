FROM ruby:2.6.6
RUN apt-get update && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn
WORKDIR /todo
COPY Gemfile Gemfile.lock /todo/
RUN bundle install