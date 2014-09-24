puts "Greetings, Human!"

puts "What is your name? "
user_name = gets.chomp

puts "What is your age? "
user_age = gets.chomp.to_i

puts "Hi #{user_name} who is #{user_age} years old!"

years = 75 - user_age
puts "You will be 75 years old in #{years} years."

user_name.upcase
puts "Hey #{user_name}, where are you going!?"
puts %s(Yo "Dude", what's up?)
