require './ask'

class User

  attr_accessor :name, :age

  def initialize(args)
    @name = args[:name]
    @age = args[:age]
  end

  def self.print_greeting
    puts "Greetings, Human!"
  end

  def self.create_user_from_prompts
    user = {}
    puts "What is your name? "
    user[:name] = gets.chomp

    puts "What is your age? "
    user[:age] = gets.chomp.to_i
    self.new(user)
  end

  def print_friendly_greeting
    puts "Hi #{@name} who is #{@age} years old!"
  end

  def first_initial
    @name.chars.first
  end

  def ask_user_about_nickname
    answer = ask_yes_or_no?("Do you mind if I call you #{first_initial} (yes or no)?")
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