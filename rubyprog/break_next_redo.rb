puts "break 的示例："
i = 0
lang = ["Perl", "Ruby", "Python", "Scheme"]

lang.each{|l|
  i += 1
  if i == 3
    break # 马上停止，跳出循环
  end
  p [i, l]
}

puts "Next 的示例："
i = 0 
lang.each{|l|
  i += 1
  if i == 3
    next # 跳过本次，然后进行下次循环
  end
  p [i, l]
}

puts "redo的示例："
i = 0
lang.each{|l|
  i += 1
  if i == 3 
    redo # 跳过本次，进行剩下的所有循环
  end
  p [i, l]
}