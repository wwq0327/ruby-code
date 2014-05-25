require "test/unit"

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


class BlogTest < Test::Unit::TestCase
  def test_create_dir
    blog_dir = "test_blog"
    site_dir = File.join blog_dir, "_site"
    layouts_dir = File.join blog_dir, "_layouts"
    posts_dir = File.join blog_dir, "_posts"

    create_dir(site_dir)
    create_dir(layouts_dir)
    create_dir(posts_dir)

    assert Dir.exist?(site_dir)
    assert Dir.exist?(layouts_dir)
    assert Dir.exist?(posts_dir)
  end

  def test_create_file
    file_path = "test_blog/_site/index.html"
    create_file file_path, "hello, world"
    assert_equal "hello, world", File.open(file_path).readlines.join
  end  

  def test_get_dir
    file_path = "test_blog/_site/index.html"
    assert_equal "test_blog/_site", get_dir(file_path)
  end


  def teardown
    blog_dir = "test_blog"
    clear_dir blog_dir
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
end
