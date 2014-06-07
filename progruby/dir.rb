Dir.chdir("/var/log")
puts Dir.pwd
# output: /var/log

Dir.chdir("/tmp") do 
  puts Dir.pwd
  # output: /tmp
  Dir.chdir("/usr") do
    puts Dir.pwd
    # output: /usr
  end
  puts Dir.pwd
  # output: /tmp
end
puts Dir.pwd
# output: /var/log

## Dir.glob

# 查找文件时使用的通配符，类似于ls命令
a = Dir.glob("*.gz")

# 实例方法
d = Dir.new("/var/log")
d.each { |name| puts "Got #{name}"}

d = Dir.new("..")
puts d.path