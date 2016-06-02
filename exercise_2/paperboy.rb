class Paperboy
  attr_reader :name, :quota, :experience, :side, :earnings

  def initialize(name, side)
    @name = name
    @side = side
  end

  def deliver(start_address, end_address)
    @experience = (end_address - start_address) / 2
    quota = 50
    if @experience < quota
      under_quota = @experience * 0.25
    else
       over_quota = (@experience * 0.50) - (50 * 0.25)
    end
  end

  def quota
    ( @experience / 2 ) + 50
  end

  def report
    "Im #{name}, I've delivered #{@experience} papers and #{@earnings}"
  end

end
