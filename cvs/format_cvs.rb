def get_file(filename)
  File.join File.dirname(__FILE__), filename
end

def read_content(file)
  File.open(file, "r") do |f|
    f.read
  end
end

def format_line(line)
  line.split(";")
end

def format_cvs(content)
  lines = content.split("\n")
  lines.each do |line|
    puts line
  end
end



