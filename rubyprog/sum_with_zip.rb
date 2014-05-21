ary1 = [1, 2, 3, 4, 5]
ary2 = [10, 20, 30, 40, 50]
ary3 = [100, 200, 300, 400, 500]
i = 0
result = []
ary1.zip(ary2, ary3) {|a, b, c|
  result << a + b + c
  i += 1
}

p result

j = 0
sum_list = []
ary1.zip(ary2) {|a, b|
  sum_list << a + b
  i += 1
}

p sum_list