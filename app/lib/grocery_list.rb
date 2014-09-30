require './lib/ask.rb'

class GroceryList

  attr_reader :groceries

  def initialize(groceries = [])
    @groceries = groceries
  end

  def read(file)
    @groceries = IO.read(file).split(',')
  end

  def write(file)
    IO.write(file, groceries.join(","))
  end

  def do_shopping
    puts "== Let's go grocery shopping! =="
    # while groceries.length > 0
    answer = false
    while !answer
      puts self
      random_item = groceries.sample
      answer = ask_yes_or_no?("Did you grab the #{random_item} (yes or no)? ")
      if answer
          groceries.delete(random_item)
      end
    end
  end

  def to_s
    "Your grocery list has #{groceries.length} items: #{groceries.join(', ')}"
  end
end