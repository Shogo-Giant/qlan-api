
## 1. クローン
```
git clone git@github.com:kohemal/qlan-api.git
```

## 2. qlan-apiに移動
```
cd qlan-api
```

## 3. docker環境の構築
```
docker-compose build
```
※ docker desctop for macのインストールが必要です。(stableでいいでしょう)
https://www.docker.com/products/docker-desktop

## 4. DBのクリエイトとマイグレーション
```
docker-compose run web rails db:create db:migrate
```

## 5. Dockerを立ち上げて、Railsを起動
```
docker-compose up
```

## 6. Railsが起動していることを確認
http://localhost:3001
「Yay! You’re on Rails!」の画面が出ればOKです！（今のところ）

## docker-compose upの落としかた
```
control + c
```

## コンテナの中への入り方
```
/qlan-api
docker-compose exec web bash
#bash-X.X と、bashに入れればOK！
```

## テスト環境の作成
```
#bash-5.0  bundle exec rake db:test:clone

```
## Sequel Proへの入り方
```
ホスト：0.0.0.0
ユーザー名：root
パスワード：password
データベース：qlan
ポート：（可変します。例；「32771」）

ポートの見方
1. docker ps
2. IMAGEが「mysql:5.7」の PORT 0.0.0.0:「xxxxx」の部分
```
