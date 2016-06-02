class Paperboy
  attr_reader :name, :quota, :experience, :side, :earnings

  def initialize(name, side)
    @name = name
    @side = side
  end

  def quota
    ( @experience / 2 ) + 50
  end

  def deliver(start_address, end_address)
    if @side == "even"
      @experience = end_address - start_address
    elsif @side == "odd"
      @experience = (end_address - start_address).round
    end

    under_quota = @experience * 0.25
    over_quota = @experience * 0.50

    under_quota + over_quota
  end

  def report
    "Im #{name}, "

end
