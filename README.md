# README

### Model Task

|**Column** -- | **Type**----|
|------------- | ------------|
|name--------- | string------|
|content------ | text--------|
|deadeline---- | date--------|
|priority----- | integer-----|
|status--------| integer-----|
|user_id-------| foreign_key-|


### Model User

|**Column**----- | **Type**----|
|----------------| ------------|
|name------------| string------|
|mail------------| string------|
|password_digest-| string------|
|to_be_admi------| boolean-----|


### Model Relationship

|**Column** -- | **Type**----|
|------------- | ------------|
|task_id-------| foreign_key-|
|label_id------| foreign_key-|

### Model Label

|**Column** -- | **Type**----|
|------------- | ------------|
|name----------| string------|


### Deployment procedure to Heroku

* heroku login -i
* heroku create everyleaf-step2-tce
* rails assets:precompile RAILS_ENV=production
* git add -A
* git commit -m "heroku_step2"
* git push heroku step2:master
* heroku run rails db:migrate
* heroku open

Things you may want to cover:

* Ruby version '5.2.5'

* Database creation: postgresql

* Database initialization: postgresql
