Your Travel  
https://your-travel.xyz/

ユーザーが世界を旅してどの国に行ったかを記録するアプリです。  
世界約２００カ国のうちどこに行ったかを記録します。

# 環境
## 言語・FW  
- ruby 2.6.5  
- Rails 5.2.4  
## サーバー等  
- AWS(VPC,EC2,RDS for MySQL,route53,S3,ACM) S3に関してはアップローダーとの連携を後ほど
- nginx, unicorn

## 使用技術
- GoogleMapAPI
- Gem
 - (後から追加)

# 機能リスト
- ログイン機能 (devise)
- いいね機能[Ajax]
- フォロー機能[Ajax]
- 投稿,画像投稿(ユーザー画像[Ajax])
- (後から追加)



EC2上で設定した部分もあるため(特にMySQLやunicorn等)、変更点は後ほど開発環境上でも修正しリモート環境に反映