ary = %w(a b c d e f)
p ary

p ary[1..3]
a1 = ary[1..3]
p a1
a1[0] = 'g'
p a1
p ary
p ary.slice(1..3) # 等同于ary[1..3]

a1[1, 0] = ["A", "B"]
p a1 

p ary.push("G")
p ary.pop()

a2 = []
p a2
a2 << 2
p a2
a3 = [1, 3, 4]
a2.concat(a3)
p a2

a4 = [1, 2, 3, 4, 5]
p a4
a4.delete_if{|i| i > 3}
p a4

