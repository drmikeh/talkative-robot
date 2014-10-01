require './lib/person'

# Author
class Author < Person
  def initialize
    super({ name: 'Mike', age: 47, gender: 'male', author: true })
  end
end
