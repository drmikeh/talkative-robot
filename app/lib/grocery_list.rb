require './lib/ask.rb'

# GroceryList
class GroceryList
  attr_reader :groceries

  def initialize(groceries = [])
    @groceries = groceries
  end

  def read(file)
    @groceries = IO.read(file).split(',')
  end

  def write(file)
    IO.write(file, groceries.join(','))
    puts "I have saved your remaining groceries to #{file}."
  end

  def do_shopping
    puts "\n== Let's go grocery shopping! =="
    # while groceries.length > 0
    answer = false
    until answer
      puts self
      random_item = groceries.sample
      answer = ask_yes_or_no?("Did you grab the #{random_item} (yes or no)? ")
      groceries.delete(random_item) if answer
    end
    puts self
  end

  def to_s
    "Your grocery list has #{groceries.length} items: #{groceries.join(', ')}"
  end
end
