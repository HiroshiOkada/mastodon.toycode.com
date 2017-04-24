mastodon.toycode.com config
===========================

## 概要

マストドンインスタンス mastodon.toycode.com で使っている
設定ファイルとスクリプトです。

個人的に使っているものを何かの参考にと公開しているものです。

## 使用法

### 実行

- ./get-env-production-sample.sh を実行して .env.production.sample を取得します。
- nginx/conf.d/default.conf のサーバー名を書き換えます
- .env.production.sample を書き換えて .env.production として保存します
- ssl の証明書と鍵ファイルを server.crt と server.key という名前で
  nginx/ssl/ ディレクトリに保存します
- docker-compose up -d で起動します。

### アップデート

- docker-compose dowun -d で停止します。
- バックアップします
- https://hub.docker.com/r/gargron/mastodon/tags://hub.docker.com/r/gargron/mastodon/tags/
  を参照して`docker-compose.yml` 中のタグを適切なものに書き換えます。
- https://github.com/tootsuite/mastodon/releases で変更点や注意箇所を確認します。
- docker-compose pull
- docker-compose run --rm web rails db:migrate
- docker-compose run --rm web rails assets:precompile
- docker-compose up -d で起動します。


## ライセンス

もとの mastodon が AGPL なので AGPL とします。

