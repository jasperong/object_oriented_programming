require_relative "rover"

class MissionControl
  attr_accessor :position, :x, :y, :direction

  def input
    puts "Input starting coordinates and direction >>"
    position = gets.chomp.gsub(" ", "").split("")
      @x = position[0].to_i
      @y = position[1].to_i
      @direction = position[2]
      # @rover = Rover.new(@x, @y, @direction)
    puts "Enter move instructions >>"
    @user_commands = gets.chomp.gsub(" ", "").split("")
      # @rover.read_instruction(user_commands)
      create_rover
  end

  def create_rover
    @rover = Rover.new(@x, @y, @direction)
  end

  def move_rover
    @rover.read_instruction(@user_commands)
  end

  def output
    "#{@x} #{@y} #{@direction}"
  end
end

mission1 = MissionControl.new
mission1.create_rover
mission1.input
mission1.move_rover
puts mission1.output
