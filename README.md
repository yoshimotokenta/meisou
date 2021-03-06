### アプリケーションの概要
このアプリケーションでは、現時代において情報が多い中での差別化を図るためのアイディア、発想力をより良くするため、上下関係に厳しい現時代で気軽にアイディアを共有できるアプリになっています。
また、発想を豊かにするための方法、瞑想アプリを紹介しているアプリとなっており、企業での仕事の生産性につながるような紹介もされています。
### URL
### テスト用アカウント
### 利用方法
ユーザー登録をすることにより、オススメの瞑想アプリを導入できる
チャット機能にてグループ作成し、職場間でのアイディアを匿名にて投稿することができる。
### 目指した課題解決
企業にて会議される企業が多い現代社会にて結果良い案も出ず、無駄な時間を過ごすことの多い日本の現状を変えるべく。
上下関係により、アイディアを提案することすら躊躇することの多い会議より日頃の私生活からアイディアを生むスタンスに変え、いつもでもアイディアを共有することができる。
より良いアイディアの共有と誰でもアイディアが出せる環境を現実化する。
### 洗い出した要件
優先順位　３
ユーザー機能
目的：　ユーザーの登録、認証機能の実装するもの。ログイン、ログアウトすることができる実装。
詳細：ユーザー登録、認証機能により、ログイン、ログアウトをすることができる

ストーリー【ユースケース】：ユーザー登録は手打ち機能により実装することができる。
見積もり時間　10時間

優先順位　２
チャット機能
目的：チャット機能により、閃いたアイディアを匿名で投稿することができ、会社のアイディアを共有することができる。
投稿の際は５W１Hでの内容を記載することが条件として、
アイディアを共有することができる実装。
個人のチャット機能も搭載している。

詳細：　グループチャットにより、閃いたアイディアを匿名で投稿ができ、会社のアイディアを共有することができる。
投稿の際は５W1Hでの内容を記載することを条件として、アイディアを共有することができる。
また個人でのアイディアとして、個人のみのチャットページも作成できる。【個人の際は自由に投稿することができる】

ストーリー【ユースケース】
・BtoBによる企業内での企画、開発の発想によるアイディアの提案時に活用。【アイディアを誰でも提案できる】
・グループ内投稿は５W1Hの【いつ、どこで、誰が、何を、なぜ、どのように】を記載しない投稿することができない。
見積もり　10時間


ピックアップ機能
優先順位　３
目的：オススメの音楽機能を取付、リラックス効果、発想力を持たせるためのおすすめアプリ、音楽の紹介機能【ランキング機能】

詳細：瞑想をすることによるメリット詳細と、
オススメの瞑想音楽アプリをpickupする。

ストーリー【ユースケース】
・ランキング形式に詳細を記載し、
瞑想の実践による発想力の強化につなげる。
見積もり時間　10時間

### 実装し機能についてのGIFと説明
### データーベース設計
### users テーブル

|      Column       | Type   | Options     |
| ----------------- | ------ | ----------- |
|       name        | string | null: false |
|       email       | string | null: false |
| encrypted_password| string | null: false |

### Association
has_many :rooms_users
has_many :rooms,through: room_users
has_many :pickup


### rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
|  name  | string | null: false |
|  when  |  text  | null: false |
|  where |  text  | null: false |
|   who  |  text  | null: false |
|   why  |  text  | null: false |
|   how  |  text  | null: false |
　　

### Association

-has_many :room_users
-has_many :users,through: room_users
-has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

### messages テーブル
 Column   | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association
belongs_to :room
belongs_to :user


### pickups テーブル

| Column | Type       | Options ----|
| ------ | ---------- | ------------|
|  info  |  text      | null: false |
|  name  |  string    | null: false |

### Association

belongs_to :user
has_many :rooms


### comment テーブル
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

belongs_to :user
belongs_to :room

