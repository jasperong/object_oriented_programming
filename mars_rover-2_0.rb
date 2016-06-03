class Rover
  attr_accessor :x, :y, :direction, :steps, :turn

  def initialize
    @x = x
    @y = y
    @direction = direction
    @n = "N"
    @w = "W"
    @s = "S"
    @e = "E"
  end

  def read_instruction
    puts "Enter 1st rover initial position and direction"
    @initial = gets.chomp.gsub(" ", "").split("")
      @x = @initial[0]
      @y = @initial[1]
      @direction = @initial[2]
    puts "Enter move instructions"
    @instructions = gets.chomp.gsub(" ", "").split("")
  end

  def turn
    case "L"
      when @n then @w
      when @w then @s
      when @s then @e
      when @e then @n
    end
    case "R"
      when @n then @e
      when @e then @s
      when @s then @w
      when @w then @n
    end
  end

  def move
    case "M"
      when @n then @y += 1
      when @e then @x += 1
      when @s then @y -= 1
      when @w then @x -= 1
    end
  end

  def walk
    @instructions.map do |array|
      case array
        when "M" then move
        when "L" then turn
        when "R" then turn
      end
    end
  end
end

puts "Enter grid size"
@size = gets.chomp.gsub(" ", "").split("")
