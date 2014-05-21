class HelloWorld
  Version = "1.0"
end

p HelloWorld::Version

# 类变量
# 以“@@”开台的变量称为类变量，类变量为该类所有实例共用的变量

class HelloCount
  @@count = 0
  def HelloCount.count
    @@count
  end
  def initialize(name="Ruby")
    @name = name
  end
  def hello
    @@count += 1
    print("Hello, world. I am #{@name}\n")
  end
end

bob = HelloCount.new("bob")
alice = HelloCount.new("Alice")
ruby = HelloCount.new

p HelloCount.count
bob.hello
alice.hello
ruby.hello
p HelloCount.count

# outpub:

# 0
# Hello, world. I am bob
# Hello, world. I am Alice
# Hello, world. I am Ruby
# 3