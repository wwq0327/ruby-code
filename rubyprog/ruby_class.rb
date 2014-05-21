require "Time"

t = Time.new
ary = [1, 1.2, "hello", [1, 2, 3], {"name"=>"wyatt", "id"=> 001}, t]

ary.each{|obj|
  puts obj.class
}

