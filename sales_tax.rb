class Float
  def round5
    (self * 10.0).round / 10.0
  end
end

def total_price(items)

  items.map do |item, price|
    @basic_tax = price * 0.1
    @imp_tax = price * 0.05
    @total_tax = @basic_tax + @imp_tax
  end

  items.each do |item, price|
    puts "#{item}: #{(price + @total_tax).round5}"
  end

    puts "Sales Taxes: #{@total_tax.round5}"

  total = items.each_value.inject(:+) + @total_tax

  puts "Total: #{total.round5}"

end

cart_1 = {
  "book" => 12.49,
  "music CD" => 14.99,
  "chocolate bar" => 0.85
}

cart_2 = {
  "imported box of chocolates" => 10.00,
  "imported bottle of perfume" => 47.50
}

cart_3 = {
  "imported bottle of perfume" => 27.99,
  "bottle of perfume" => 18.99,
  "packet of headache pills" => 9.75,
  "box of imported chocolates" => 11.25
}

total_price(cart_1)
total_price(cart_2)
total_price(cart_3)
