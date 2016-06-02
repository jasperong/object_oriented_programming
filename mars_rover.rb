class Rover
  attr_accessor :x, :y, :direction, :steps, :turn

  def initialize(x, y, direction)
    puts "Starting point?"
    start = gets.chomp
    puts 

  end

  def read_instruction(direction)


  end

  def move
    case @direction
    when n
      y += 1
    when e
      x += 1
    when s
      y -= 1
    when w
      x -= 1
    end
  end

  def turn(turn)

  end
end

rover1 = Rover.new
rover1.read_instruction
