## users

| Column     | Type   | Option |
| ---------- | ------ | -------|
| email      | string | null:false |
| password   | string | null:false |
| name       | string | null:false |
| profile    | text   | null:false |
| occupation | text   | null:false |
| position   | text   | null:false |


## prototypes

| Column     | Type          | Option     |
| ---------- | ------------- | ---------- |
| title      | string        | null:false |
| catch_copy | text          | null:false |
| concept    | text          | null:false |
| user       | reference     | null:false, foreign_key: true |


## comments

| Column    | Type       | Option |
| --------- | ---------- | -------|
| text      | text       | null:false |
| user      | references | null:false, foreign_key: true |
| prototype | references | null:false, foreign_key: true |