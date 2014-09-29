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

class User

    attr_accessor :name, :age

    def initialize(args)
        @name = args[:name]
        @age = args[:age]
    end

    # def self.get_user_info
    def self.get_user_info
        user = {}
        puts "What is your name? "
        user[:name] = gets.chomp

        puts "What is your age? "
        user[:age] = gets.chomp.to_i
        user
    end

    def print_friendly_greeting
        puts "Hi #{@name} who is #{@age} years old!"
    end

    def first_initial
        @name.chars.first
    end

    def ask_user_about_nickname

        answer = ask_user?("Do you mind if I call you #{first_initial} (yes or no)?")
        if answer
            puts "Okay, I will not call you that."
            @nickname = @name
        else
            puts "Cool, From now on I will call you #{first_initial}!"
            @nickname = first_initial
        end
    end

    def print_age_based_message
        if @age < 13
            puts "You are not yet a teenager"
        else
            puts "You are a teenager" unless @age > 19
            puts "You can legally drink!" if @age >= 21
        end
        years = 75 - @age
        puts "You will be 75 years old in #{years} years."
    end

    def print_farewell
        puts "Farewell #{@nickname}!"
    end
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
