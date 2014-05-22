/(.)(.)(.)/ =~ "abc"

first = $1

p first

str = "abc    def   g        hi"
p str.sub(/\s+/, ' ')
p str.gsub(/\s+/, ' ')

"abracatabra".scan(/(.)(a)/){|matched|
  p matched
}

str = "http://www.ruby-lang.org/ja/"
%r|http://([^/]*)/| =~ str
print "server address: ", $1, "\n"
