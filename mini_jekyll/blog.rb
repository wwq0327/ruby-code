require "rdiscount"
require "liquid"

def create_dir(dir_name)
  path = []
  dir_name.split("/").each {|dir|
    path << dir
    dir_path = path.join "/"
    Dir.mkdir dir_path unless Dir.exists? dir_path
  }
end


def get_dir(file_path)
  arr = file_path.split "/"
  arr.pop
  arr.join("/")
end

def create_file(file_path, content)
  dir_path = get_dir(file_path)
  create_dir dir_path unless Dir.exists?dir_path

  File.open(file_path, "w") { |file|
    file.write(content)
  }
end

def clear_dir(dir_path)
  return unless Dir.exists? dir_path
  
  files = Dir.entries(dir_path) - [".", ".."]
  if files.length > 0
    files.each { |file|
      path = File.join dir_path, file
      if Dir.exists?(path)
        clear_dir(path)
      else
        File.delete path
      end
    }
  end
  Dir.delete dir_path
end

def check_usage
  unless ARGV.length == 2 && 'create' == ARGV[0]
    puts "Usage: `ruby blog.rb create app_name`"
    exit
  end
end

def create_dirs(blog_name)
  blog_dir = blog_name
  layouts_dir = File.join blog_dir, "_posts"
  posts_dir = File.join blog_dir, "_posts"
  [layouts_dir, posts_dir].each do |dir|
    create_dir dir
  end
end

def create_default_layout(blog_name, content)
  blog_dir = blog_name
  layouts_dir = File.join blog_dir, "_layouts"
  default_layout = File.join layouts_dir, "default.html"
  create_file default_layout, content
end

def get_default_layout_content(*args)
  if args.length == 1
    File.open(args[0]).readlines.join
  else
    content = []
    content << "<html><head><meta charset=\"utf-8\"/><title>my_blog</title></head><body>"
    content << "<h1>My Blog</h1><div id='content'>"
    content << "{{content}}"
    content << "</div></body></html>"
    content.join
  end
end

def is_md_file?(file_name)
  file_name =~ /\.md$/
end

def get_mds(files)
  files.select do |file|
    is_md_file? file
  end
end

def md_to_html(md_content)
  RDiscount.new(md_content).to_html
end

def create(blog_name)
  create_dir blog_name
  create_default_layout blog_name, get_default_layout_content
end

# def render(layout_text, blog_text)
#   #layout_regexp = /\{\{\s*(content)\s*\}\}/
#   layout_regexp = %r|{{\s*(content)\s*}}|
#   match = layout_text.match(layout_regexp)
#   layout_text.sub(match.to_s, blog_text)
# end

def render(layout_text, blog_text)
  template = Liquid::Template.parse(layout_text)
  template.render("content" => blog_text)
end

if $0 == __FILE__
  check_usage
  method = ARGV[0]
  blog_name = ARGV[1]
  if method == "create"
    create blog_name
  end
end