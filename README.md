<!-- # README

## usersテーブル
|  Column              |  Type  |  Option                 |
| -------------------- | ------ | ----------------------- |
| nickname             | string | null:false              |
| password             | string | null:false              |
| email                | string | null:false,unique: true |

### Association
- has_many :menus


## menusテーブル

|   Column      |  Type     |  Option                      |
| ------------- | --------- | ---------------------------- |
| name          | string    | null:false                   |
| expiration    | text      | null:false                   |
| kcal          | integer   | null:false                   |
| user          | reference | null:false ,foreign_key: true|

### Association
- has_many :tags, through: menu_tag_relation
- belongs_to :user



## tagsテーブル
|   Column      |  Type     |  Option                      |
| ------------- | --------- | ---------------------------- |
| name          | string    | null:false                   |

### Association
- has_many:menus, through: menu_tag_relation



## ingredientテーブル
|   Column      |  Type     |  Option                      |
| ------------- | --------- | ---------------------------- |
| name          | string    | null:false                   |
| quantity      | string    | null:false                   |
| menu          | reference | null:false ,foreign_key: true|

### Association
- belongs_to :menu



## recipeテーブル
|   Column      |  Type     |  Option                      |
| ------------- | --------- | ---------------------------- |
| name          | string    | null:false                   |
| menu          | reference | null:false ,foreign_key: true|

### Association
- belongs_to :menu

 -->

