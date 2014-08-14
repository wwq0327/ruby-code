require 'etc'

name = Etc.getlogin
info = Etc.getpwnam(name)
puts info.name
puts info.dir
puts info.uid
puts info.shell
