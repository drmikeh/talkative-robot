require_relative 'user'

def print_greeting
    puts "Greetings, Human!"
end

def ask_user?(question)
    answer = ""
    while answer != "yes" && answer != "no"
        puts question
        answer = gets.chomp.downcase
        if answer == "y"
            answer = "yes"
        elsif answer == "n"
            answer = "no"
        end
    end
    answer == "yes" ? true : false
end

def do_grocery_shopping
    puts "== Let's go grocery shopping! =="
    groceries = IO.read("groceries.txt").split(',')
    puts "You have #{groceries.length} items in your grocery list."
    puts "Here is your grocery list: #{groceries.join(', ')}"
    while groceries.length > 0
        random_item = groceries.sample
        answer = ask_user?("Did you grab the #{random_item} (yes or no)? ")
        if answer
            groceries.delete(random_item)
        end
        puts "Now your grocery list is #{groceries.join(', ')}"
    end
end

print_greeting
the_user = User.new(User.get_user_info)
the_user.print_friendly_greeting
the_user.ask_user_about_nickname
the_user.print_age_based_message

do_grocery_shopping
the_user.print_farewell
