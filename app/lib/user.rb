require './lib/ask'
require './lib/person'

# User
class User < Person
  attr_accessor :name, :age

  def initialize(args)
    super(args)
  end

  def self.print_greeting
    puts 'Greetings, Human!'
  end

  def self.create_user_from_prompts
    user = {}
    puts 'What is your name? '
    user[:name] = gets.chomp

    puts 'What is your age? '
    user[:age] = gets.chomp.to_i
    new(user)
  end

  def ask_user_about_nickname
    question = "Do you mind if I call you #{first_initial} (yes or no)?"
    answer = ask_yes_or_no?(question)
    if answer
      puts 'Okay, I will not call you that.'
      @nickname = @name
    else
      puts "Cool, From now on I will call you #{first_initial}!"
      @nickname = first_initial
    end
  end

  def print_farewell
    puts 'Farewell #{@nickname}!'
  end
end
