class Rover
  attr_accessor :x, :y, :direction, :steps, :turn

  def initialize
    @x = x
    @y = y
    @direction = direction
  end

  def read_instruction
    puts "Enter 1st rover initial position and direction"
    @initial = gets.chomp.gsub(" ", "").split("")
      @x = @initial[0]
      @y = @initial[1]
      @direction = @initial[2]
    puts "Enter move instructions"
    @instructions = gets.chomp.gsub(" ", "").split("")
    puts "Enter 2nd rover initial position and direction"
  end

  def turn(turn)
    @instructions.each do |command|
      case command == "L"
      when @initial.include?("N") then @w
      when @initial.include?("W") then @s
      when @initial.include?("S") then @e
      when @initial.include?("E") then @n
      end
      case command == "R"
      when @initial.include?("N") then @e
      when @initial.include?("E") then @s
      when @initial.include?("S") then @w
      when @initial.include?("W") then @n
      end
    end
  end

  def move
    @instructions.each do |command|
      case command == "M"
      when @n then @y += 1
      when @e then @x += 1
      when @s then @y -= 1
      when @w then @x -= 1
      end
    end
    "#{@x} #{@y} #{@direction}"
  end
end

puts "Enter grid size"
@size = gets.chomp.gsub(" ", "").split("")
