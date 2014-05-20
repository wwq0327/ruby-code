require "pp"

user = {"name" => "wyatt",
  "email" => "wwq0327@gmail.com",
  "id" => "97019"
}

p user
pp user

user.each{|key, value|
  print(key, "=>", value, "\n")
}