## usersテーブル

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| family_name        | string | null: false               |
| first_name         | string | null: false               |
| family_name        | string | null: false               |
| first_name         | string | null: false               |
| birth_date         | string | null: false               |



### Association
- has_many :items
- has_many :orders


## itemsテーブル

| Column        | Type       | Options                        |
|---------------|------------|--------------------------------|
| item_name     | string     | null: false                    |
| item_details  | text       | null: false                    |
| category      | string     | null: false                    |
| condition     | string     | null: false                    |
| shipping_fee  | string     | null: false                    |
| address       | string     | null: false                    |
| delivery_time | string     | null: false                    |
| price         | string     | null; false                    |
| user          | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- has_one :order


## ordersテーブル

| Column | Type       | Options                        |
|--------|------------|--------------------------------|
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |



### Association
- belongs_to :user
- belongs_to :item
- belongs_to :address



## addressesテーブル

| Column         | Type   | Options     |
|----------------|--------|-------------|
| post_code      | string | null: false |
| prefectures    | string | null: false |
| city           | string | null: false |
| street_address | text   | null: false |
| building_name  | text   |             |
| tel_number     | string | null: false |

### Association
- has_many :orders