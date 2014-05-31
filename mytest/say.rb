require "./tosay"

class Say
  include ToSay
end

s = Say.new
s.to_say