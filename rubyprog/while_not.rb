sum = 0
i = 1
while !(sum>=50)
  sum += 1
  i += 1
end

puts sum

sum = 0 
for i in 1...101
  sum += i
end
puts sum

sum = 0
(1...101).each {|i|
  sum = sum + i
}
puts sum
