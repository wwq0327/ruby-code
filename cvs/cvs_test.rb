require "./format_cvs"
require "test/unit"

class TestCvs < Test::Unit::TestCase
  def test_get_file
    filename = "test.a"
    assert_equal "/Users/wyatt/ruby-code/ruby-code/cvs/test.a", get_file(filename)
  end

  def test_read_content
    assert_equal "hello, world\n", read_content("./testdata/hello.tt")
  end

  def test_format_line
    assert_equal %w(A B C D E F G H), format_line("A;B;C;D;E;F;G;H")
  end
end
