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
      @initial.each do |x, y, direction|
      end
    puts "Enter move instructions"
    @instructions = gets.chomp.gsub(" ", "").split("")
    puts "Enter 2nd rover initial position and direction"
  end



  def turn(turn)
    @instructions.each do |command|
      case command == "L"
      when @initial.include?("N") then "W"
      when @initial.include?("W") then "S"
      when @initial.include?("S") then "E"
      when @initial.include?("E") then "N"
      end
      case command == "R"
      when @initial.include?("N") then "E"
      when @initial.include?("E") then "S"
      when @initial.include?("S") then "W"
      when @initial.include?("W") then "N"
      end
    end
  end

  def move
    @instructions.each do |command|
      case command
        when "N" then y += 1
        when "E" then x += 1
        when "S" then y -= 1
        when "W" then x -= 1
      end
    end
  end
end

puts "Enter grid size"
@size = gets.chomp.gsub(" ", "").split("")

rover1 = Rover.new
rover1.read_instruction
