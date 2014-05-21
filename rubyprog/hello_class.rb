class HelloWorld
  # 定义访问方法，这块内容和Objective-C很相似
  # attr_reader :name 一个get方法，类似于
  # def name
  #   @name
  # end
  # arrt_writer :name 一个set方法
  # def name=(value)
  #   @name = value
  # end
  # attr_accessor 同时定义get 和 set方法
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def hello
    print("Hello, world. I am #{@name}\n")
  end
end

h = HelloWorld.new("Wyatt")
h.hello()

h.name = "wwq0327"
puts h.name
h.hello