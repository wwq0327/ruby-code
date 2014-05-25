require "test/unit"
require "./blog"

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
end
