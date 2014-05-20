names = ["小林", "林", "市里", "大哥"]
names.each{|name|
  if /林/ =~ name
    puts name
  end
}