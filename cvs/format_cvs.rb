def get_file(filename)
  File.join File.dirname(__FILE__), filename
end

def read_content(file)
  File.open(file, "r") do |f|
    f.read
  end
end
