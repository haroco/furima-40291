## usersテーブル

| Column                  | Type   | Options                   |
|-------------------------|--------|---------------------------|
| nickname                | string | null: false               |
| email                   | string | null: false, unique: true |
| encrypted_password      | string | null: false               |
| family_name             | string | null: false               |
| first_name              | string | null: false               |
| family_name_kana        | string | null: false               |
| first_name_kana         | string | null: false               |
| birth_date              | date   | null: false               |



### Association
- has_many :items
- has_many :orders


## itemsテーブル

| Column        | Type       | Options                        |
|---------------|------------|--------------------------------|
| item_name     | string     | null: false                    |
| item_details  | text       | null: false                    |
| category      | integer    | null: false                    |
| condition     | integer    | null: false                    |
| shipping_fee  | integer    | null: false                    |
| ship_from     | integer    | null: false                    |
| delivery_time | integer    | null: false                    |
| price         | integer    | null; false                    |
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
- has_one :address



## addressesテーブル

| Column         | Type       | Options                        |
|----------------|------------|--------------------------------|
| post_code      | string     | null: false                    |
| prefectures    | integer    | null: false                    |
| city           | string     | null: false                    |
| street_address | text       | null: false                    |
| building_name  | text       |                                |
| tel_number     | string     | null: false                    |
| order          | references | null: false, foreign_key: true |

### Association
- belongs_to :order