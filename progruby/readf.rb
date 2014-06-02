f = File.open("fib.rb")
f.each do |line|
  puts line
end

f2 = File.open("fib.rb", "r") { |file|
  while line = file.gets
    puts line
  end
}

File.open("fib.rb") do |file|
  i = 0
  file.each_line { |line| 
    i += 1
    puts "#{i} #{line}"}
end
