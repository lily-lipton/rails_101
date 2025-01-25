#!/bin/bash
# エラーが発生するとスクリプトを終了
set -e

# server.pid が存在するとサーバが起動できないため、server.pid を削除
rm -f /myapp/tmp/pids/server.pid

# DockerfileのCMDで渡されたコマンド (Railsサーバ起動) を実行
exec "$@"
