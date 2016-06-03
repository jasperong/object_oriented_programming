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
      when @n then @direction = @w
      when @w then @direction = @s
      when @s then @direction = @e
      when @e then @direction = @n
    end
    case "R"
      when @n then @direction = @e
      when @e then @direction = @s
      when @s then @direction = @w
      when @w then @direction = @n
    end
    @direction
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
    @instructions.each do |command|
      if command == "M"
        move
      elsif command == "L" || command == "R"
        turn
      end
    end
    @initial[0] = @x
    @initial[1] = @y
    @initial[2] = @direction
  end
end
