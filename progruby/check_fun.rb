def check?(num)
  if num >= 5
    true
  else
    false
  end
end

puts check?(2)
puts check?(6)

def myblok(a, b)
  a + yield(a, b)
end

puts myblok(1, 2) { |x, y| (x+y) * 3 }