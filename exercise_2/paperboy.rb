class Paperboy
  attr_reader :name, :quota, :experience, :side, :earnings

  def initialize(name, side)
    @name = name
    @side = side
    @quota = 50
    @experience = 0
    @earnings = 0
  end

  def quota
    if @experience == nil
      @quota
    else
      @experience / 2 + @quota
    end
  end

  def deliver(start_address, end_address)
    deliveries = (end_address - start_address) / 2
      if deliveries <= quota
        @total = (deliveries * 0.25) - 2.0
      elsif deliveries > quota
        @total = (deliveries - quota) * 0.50 + quota * 0.25
      end
      @earnings += @total
      @experience += deliveries
    @total
  end

  def report
    "Im #{name}, I've delivered #{@experience} papers and I earned $#{@earnings}. I'm rich!!"
  end
end

tommy = Paperboy.new("Tommy", "odd")

puts tommy.quota
puts tommy.deliver(100, 220)
puts tommy.earnings
puts tommy.report
puts tommy.quota
puts tommy.deliver(1, 150)
puts tommy.earnings
puts tommy.report
