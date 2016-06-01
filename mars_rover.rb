class Rover
  attr_accessor :x, :y, :direction, :steps, :turn

  def initialize(x, y, direction)


  end

  def read_instruction(direction)

  end

  def move(steps)
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
    puts "Enter L to turn left"
    puts "Enter R to turn right"

  end
end

rover1 = Rover.new
rover1.read_instruction
