require './ask'
require './user'
require './grocery_list'

User.print_greeting
# the_user = User.new(User.get_user_info)
the_user = User.create_user_from_prompts

the_user.print_friendly_greeting
the_user.ask_user_about_nickname
the_user.print_age_based_message

groceries = GroceryList.new
groceries.read("groceries.txt")
groceries.do_shopping
groceries.write("groceries2.txt")

the_user.print_farewell
