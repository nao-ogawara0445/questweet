## usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| nickname   | string | null: false |
| email  | string | null: false |
| password  | string | null: false |
| profile | text | null: false |
### Association
- has_many :user_questions
- has_many :questions , through:user_questions
- has_many :comments

## user_questionsテーブル (中間テーブル)
| Column | Type       | Options                            |
| ------ | ---------- | ---------------------------------  |
| user   | references | null: false, foreign_key: true     |
| question| references | null: false , foreign_key: true |
### Association

- belongs_to :question
- belongs_to :user

## questionsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title   | string | null: false |
 
- has_many :user_questions
- has_many :users , through:user_questions
- has_many :comments

## commentsテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| answer| string | null: false |
| user   | references | null: false, foreign_key: true     |
| question  | references | null: false , foreign_key: true |

- belongs_to :question
- belongs_to :user