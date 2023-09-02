# Rails7 Template

## リポジトリを作成・Cloneしてからすること

### 1. .envを作成
```shell
make init
```
### 2. Appをリネーム
`config/application.rb`の`module Rails7Template`を変更

## コマンド
### development環境
#### 起動
```shell
make dev
# Railsコンテナのビルド・up・ログ表示まで実行されます
# それぞれのコマンドを個別に実行したい場合はmake build-dev, make up-dev, make log-devを実行してください
```
#### 終了
```shell
make down-dev
```
#### 破棄
```shell
make clean-dev
# down --rmi all --volumes --remove-orphansが実行されます
```

### production環境
#### 起動
```shell
make prod
# Railsコンテナのビルド・up・ログ表示まで実行されます
# CDなどではmake build-prod, make up-prodを実行してください
```
#### 終了
```shell
make down-prod
```

### その他
#### redis-cliに入る
```shell
make redis-cli
```