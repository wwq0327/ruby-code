require "test/unit"
require "./blog"

class BlogTest < Test::Unit::TestCase
  def setup
    @blog_dir = "test_blog"
    @site_dir = File.join @blog_dir, "_site"
    @layouts_dir = File.join @blog_dir, "_layouts"
    @posts_dir = File.join @blog_dir, "_posts"
    @file_path = File.join @site_dir, "index.html"
    @default_layout = File.join @layouts_dir, "default.html"
  end

  def test_create_dir
    create_dir(@site_dir)
    create_dir(@layouts_dir)
    create_dir(@posts_dir)

    assert Dir.exist?(@site_dir)
    assert Dir.exist?(@layouts_dir)
    assert Dir.exist?(@posts_dir)
  end

  def test_create_file
    create_file @file_path, "hello, world"
    assert_equal "hello, world", File.open(@file_path).readlines.join
  end

  def test_create_default_layout
    create_default_layout @blog_dir, 'test'
    assert File.exist? @default_layout
    assert_equal "test", File.open(@default_layout).readlines.join
  end

  def test_default_layout_content
    default_content = get_default_layout_content
    assert default_content.include? "{{content}}"
  end

  def test_get_dir
    assert_equal "test_blog/_site", get_dir(@file_path)
  end

  def test_create
    create @blog_dir
    assert File.exist? @default_layout
    assert_equal get_default_layout_content, File.open(@default_layout).readlines.join
  end

  def test_is_md_file?
    assert !is_md_file?("text.txt")
    assert is_md_file?("test.md")
  end

  def test_get_mds
    md_file = "c.md"
    result = get_mds(["a.txt", "b.html", md_file])
    assert_equal 1, result.length
    assert_equal md_file, result[0]
  end

  def test_md_to_html
    md_content = "#content"
    html_content = "<h1>content</h1>"
    assert_equal html_content, md_to_html(md_content)
  end

  def teardown
    clear_dir @blog_dir
  end
end
