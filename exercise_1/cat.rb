class cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end
end

kitty = Cat.new("kitty", "tuna", "12 PM")
neko = Cat.new("neko", "salmon", "3 PM")
