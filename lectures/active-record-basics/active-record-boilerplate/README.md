## ActiveRecord Boilerplate

What we learned today:

- rake tasks (run `rake -T` in the terminal to see all the options)
- Migrations (instructions written in ruby on how to change a db; remember the naming conventions, the timestamp from rake, and to run `rake db:migrate` after it; the migration files should be inside db/migrate/)
- Model inheriting from ActiveRecord::Base (remember the naming conventions, double check name of class VS name of file)
- Seed file to kickstart some data into your app (the faker gem is awesome for that)

Some of the Active Record's methods that we can use:

- Restaurant.find(1)
- Restaurant.find_by(name: "Shrubbles")
- Restaurant.where(address: "Mastodon")
- Restaurant.count
- Restaurant.first
- Restaurant.last
- Restaurant.new and then .save on the instance
- Restaurant.create
