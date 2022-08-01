# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# usersテーブル
| Column             | Type    | options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| admin              | boolean | default: false            |

## Association
- has_many :mouses
- has_many :reviews

# mousesテーブル
| Column             | Type        | options                        |
| -----------------  | ----------- | ------------------------------ |
| name               | string      | null: false                    |
| maker_id           | integar     | null: false                    |
| connection_id      | integar     | null: false                    |
| symmetry_id        | integar     | null: false                    |
| weight             | string      | null: false                    |
| dpi                | string      | null: false                    |
| software_id        | integar     | null: false                    |
| software_url       | text        |                                |
| order_url          | text        | null: false                    |
| user_id            | references  | null: false, foreign_key: true |

## Association
- belongs_to :user
- has_many :mouse_reviews

# reviewsテーブル
| Column             | Type        | options                        |
| -----------------  | ----------- | ------------------------------ |
| grip_type          | string      | null: false                    |
| play_game_id       | integar     | null: false                    |
| rating             | integar     | null: false, default: 0        |
| usability          | text        | null: false                    |
| user_id            | references  | null: false, foreign_key: true |

## Association
- belongs_to :user
- has_many :mouse_reviews

# mouse_reviewsテーブル
| Column               | Type        | options                        |
| -------------------  | ----------- | ------------------------------ |
| mouse_id             | references  | null: false, foreign_key: true |
| review_id            | references  | null: false, foreign_key: true |

## Association
- belongs_to :mouse
- belongs_to :review