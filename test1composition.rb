require "./test2composition.rb"

class Remover
    def decrease(number, step = 1)
      number -= step
    end
end

class Animal
    def initialize(name, number_of_legs, food='Unknown')
        @name = name
        @number_of_legs = number_of_legs
        @food = food
        @liked_food = NoFood.new()  # This is a composition add "liked_food"
    end
    
    def remove_leg
        remover = Remover.new()
        @number_of_legs = remover.decrease(@number_of_legs)
    end

    # a composition for adding method 
    # method "likes_food" combines all methods "is_liked" from test2
    def likes_food?(food)           
        @liked_food.is_liked?(food)
    end
  
end