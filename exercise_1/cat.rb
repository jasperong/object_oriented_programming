class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end
end

kitty = Cat.new("kitty", "tuna", 11)
neko = Cat.new("neko", "salmon", 14)

def meal_time

  time = [*1..12]
  if @meal_time <= 11
    "#{time[@meal_time]} + AM"
  else
    "#{time[@meal_time - 12]} + PM"
  end
  meal_time
end
