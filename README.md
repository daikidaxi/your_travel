Your Travel


ユーザーが世界を旅してどの国に行ったかを記録するアプリです。

（数え方によりますが）世界約２００カ国のうちどこに行ったかを記録します。

他のユーザーの状況も確認できます。

https://your-traveling.herokuapp.com/

現在はherokuでのデプロイですが、

・段階的にAWS(EC2、RDS、S3等)を用いてのデプロイ

・Docker環境を形成

・CIRCLE CIでの自動テスト自動デプロイ

・AWS ECSを用いる

といったことを目標にしています。


現在、UI/UXについては開発途中ですのであまり見た目は良くないかもしれません。

訪問国をグラフで大陸毎、訪問国数で表す機能を追加予定です。


環境

ruby 2.6.5

rails 5.2.4

mysql2 0.5.2


機能リスト（後から追加）

・

・
