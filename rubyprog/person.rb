class Person

  def initialize(name)
    @name = name
  end

  def say(word)
    puts "#{word}, #{@name}"
  end
end

p1 = Person.new("wyatt")
p2 = Person.new("wwq0327")

p1.say("Hello")
p2.say("Hello")