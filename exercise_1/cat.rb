class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def meal_time
    if @meal_time <= 11
      "#{@meal_time + 1} AM"
    else
      "#{@meal_time - 11} PM"
    end
  end
end


kitty = Cat.new("kitty", "tuna", 11)
neko = Cat.new("neko", "salmon", 14)

puts kitty.meal_time
