ltotal = 0
wtotal = 0
ctotal = 0
ARGV.each{|file|
  begin
    input = open(file)
    l, w, c = 0, 0, 0
    while line = input.gets
      l += 1
      c += line.size
      line.sub!(/^\s+/, "") # 删除行头空白
      ary = line.split(/\s+/).size
      w += ary.size
    end
    input.close
    printf("%8d %8d %8d %s\n", l, w, c, file)
    ltotal += l
    wtotal += w
    ctotal += c
  rescue => ex
    print ex.message, "\n"
  end
}

printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total")