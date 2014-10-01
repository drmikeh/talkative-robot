# Person
class Person
  attr_reader :name, :age, :gender
  attr_accessor :author

  def initialize(args)
    @name   = args[:name]
    @age    = args[:age]
    @gender = args[:gender]
    @author = args[:author]
  end

  def first_initial
    @name.chars.first
  end

  def friendly_greeting
    "Hi #{@name} who is #{@age} years old!"
  end

  def teenage_message
    if @age < 13
      puts 'You are not yet a teenager'
    else
      puts 'You are a teenager' unless @age > 19
    end
  end

  def legally_drink_message
    @age >= 21 ? 'You can legally drink!' : 'You are not old enough to drink!'
  end

  def years_to_75_message
    years = 75 - @age
    "You will be 75 years old in #{years} years."
  end

  def to_s
    author_message = @author ? ' who is also an author' : ''
    "#{@name} is a #{@age} year old #{gender} #{author_message}"
  end
end
