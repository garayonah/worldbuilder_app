# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

eightball = RandomTable.find_or_create_by(name: "Magic 8-Ball")

["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it, yes",
"Most likely", "Outlook good", "Yes", "Signs point to yes",
"Reply hazy, try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", 
"Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"].each_with_index do |option_text, i|
  RandomTableOption.find_or_create_by(random_table_id: eightball.id, text: option_text, option_start: i+1)
end