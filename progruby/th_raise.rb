# 线程和异常
threads = []
4.times do |number|
  threads << Thread.new(number) do |i|
    raise "BOOM!" if i == 2
    print "#{i}\n"
  end
end
threads.each {|t| t.join}