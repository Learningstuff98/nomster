class Animal
  def eat
    puts 'om nom nom nom'
  end
end

class Dog < Animal
  def bark
    puts 'woof'
  end
end

class Cat < Animal
  def meow
    puts 'meow'
  end
end

class GoldenRetriver < Dog
  def fetch
    puts 'retirves thrown object'
  end
end

animal   = Animal.new
dog      = Dog.new
cat      = Cat.new
gr       = GoldenRetriver.new

puts gr.is_a?(Dog)