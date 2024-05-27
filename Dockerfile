# ベースイメージの指定
FROM node:20.13.1

# 作業ディレクトリの設定
WORKDIR /app

# ローカルの nuxt-test ディレクトリをコンテナの /app ディレクトリにコピー
COPY nuxt-test/ .

# 依存関係のインストール
RUN npm install

# アプリケーションのポートを開放
EXPOSE 3000

# アプリケーションの起動
CMD ["npm", "run", "dev"]