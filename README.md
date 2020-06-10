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
## messagesテーブル

|Column|Type|Option|
|------|----|------|
|body|text|
|image|string|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
-belongs_to :user
-belongs_to :group


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|nul: false|
|email|string|nul: false|
|password|string|nul: false|

### Association
- has_many :messages
- has_many :groups, through :groups_users
- has_many :users_groups


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|nul: false|

### Association
- has_many :users, through :groups_users
- has_many :messages
- has_many :users_groups


## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group