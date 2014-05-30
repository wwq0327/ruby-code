f = File.open("fib.rb")
f.each do |line|
  puts line
end

f2 = File.open("fib.rb", "r") { |file|
  while line = file.gets
    puts line
  end
}