require './lib/ask'
require './lib/user'
require './lib/grocery_list'

User.print_greeting
# the_user = User.new(User.get_user_info)
the_user = User.create_user_from_prompts

the_user.print_friendly_greeting

puts the_user.get_teenage_message
puts the_user.get_legally_drink_message
puts the_user.get_years_to_75_message

the_user.ask_user_about_nickname

groceries = GroceryList.new
groceries.read("./data/groceries_in.txt")
groceries.do_shopping
groceries.write("./data/groceries_out.txt")

the_user.print_farewell
