class Person
  attr_accessor :name

  def initialize
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object."
  end
end

chris = Person.new
chris.name = "Chris"
puts chris.greeting

cristina = Person.new
cristina.name = "Cristina"
puts cristina.greeting
