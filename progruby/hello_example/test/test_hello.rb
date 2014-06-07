require "test/unit"
require File.expand_path("../../lib/hello", __FILE__)

puts __FILE__

class TestHello < Test::Unit::TestCase
  def test_hello
    assert_equal "hello, world", hello
  end
end
