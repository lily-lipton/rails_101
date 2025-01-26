FROM ruby:3.3

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs \
                       default-mysql-client \
                       vim

# /rails_101 を作業用ディレクトリとして設定
RUN mkdir /rails_101
WORKDIR /rails_101

COPY Gemfile /rails_101/Gemfile
COPY Gemfile.lock /rails_101/Gemfile.lock

# コンテナ内にコピーした Gemfile の bundle install
RUN bundle install

COPY . /rails_101
