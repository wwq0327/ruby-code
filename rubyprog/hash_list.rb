list = {name: "wyatt", email: "wwq@gmail.com"}

list.each{|key, value|
  print("#{key}: #{value}\n")
}

list.each do |k, v|
  print("#{k}: #{v}\n") 
end
