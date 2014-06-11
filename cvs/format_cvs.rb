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
end

def get_header(cvs)
  cvs[0]
end

def get_content(cvs)
  cvs[1..(a.length-1)]
end


