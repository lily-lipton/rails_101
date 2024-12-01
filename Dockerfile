FROM ruby:3.1.2

# 必要なパッケージのインストール
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs npm && \
    npm install -g yarn

# 作業ディレクトリの作成と設定
WORKDIR /rails_101

# BundlerとRailsのバージョンを固定
RUN gem install bundler:2.3.14 && \
    gem install rails:7.0.4

# GemfileとGemfile.lockをコピー
COPY Gemfile* ./

# Bundlerの設定
ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"

# Gemのインストール
RUN bundle install

# その他のソースコードをコピー
COPY . .

# エントリーポイントスクリプト (コンテナ起動時に実行させるスクリプト) の追加
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# コンテナ起動時にRailsサーバーを起動
CMD ["rails", "server", "-b", "0.0.0.0"]
