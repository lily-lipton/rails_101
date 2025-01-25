# ------------------------
# 以下は下記記事を参考に作成したもの => 上手くいかず…
# ref:
#   https://qiita.com/3Zz8Xx/items/3341a795e1c6fa24bf33
#   https://docs.docker.jp/compose/rails.html
# ------------------------
FROM ruby:3.1.2

# 必要なパッケージのインストール
RUN apt-get update -qq && \
    apt-get install -y build-essential default-mysql-client default-libmysqlclient-dev nodejs npm && \
    npm install -g yarn

# 作業ディレクトリの作成と設定
WORKDIR /myapp

# BundlerとRailsのバージョンを固定
RUN gem install bundler:2.3.14 && \
    gem install rails:7.0.4 && \
    gem install railties:7.0.4

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
