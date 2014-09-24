# require 'pry'

puts "Greetings, Human!"

puts "What is your name? "
user_name = gets.chomp

puts "What is your age? "
user_age = gets.chomp.to_i

puts "Hi #{user_name} who is #{user_age} years old!"

first_initial = user_name[0]

user_answer = ""
while user_answer != "yes" && user_answer != "no"
    puts "Do you mind if I call you #{first_initial} (yes or no)?"
    user_answer = gets.chomp.downcase
end
if user_answer == "yes"
    puts "Okay, I will not call you that."
else
    puts "Cool!"
end

years = 75 - user_age
puts "You will be 75 years old in #{years} years."

# binding.pry

user_name.upcase
puts "Hey #{user_name}, where are you going!?"
puts %s(Yo "Dude", what's up?)
