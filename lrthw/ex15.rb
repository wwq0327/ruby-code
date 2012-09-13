filename = ARGV.first

prompt = '> '
txt = File.open(filename)

puts "Here's your file: #{ filename }"
puts txt.read()

puts "Type the filename again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()

def h
  puts "hello"
end

if __FILE__ == $0
  h()
end
