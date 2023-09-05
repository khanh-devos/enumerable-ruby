require "./test1composition.rb"
require "./test2composition.rb"

class Dog < Animal
  def initialize(color, name = "Unknown")
    super("dog", 4, name)
    @color = color
    @liked_food = DogFood.new()
  end

end

class Spider < Animal
  def initialize(web_strength_level, name = "Unknown")
    super("spider", 8, name)
    @web_strength_level = web_strength_level
    @liked_food = SpiderFood.new()
  end
end

d1 = Dog.new('red', "dog food")
p d1.likes_food?('meat')