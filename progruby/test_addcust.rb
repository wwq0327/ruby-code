require 'test/unit'
require './addcust'

class TestAddCustomer < Test::Unit::TestCase
  def test_add_1
    c = Customer.new("Ima", "Customer")
    f = File.open("tmpfile", "w") do |f|
      c.append_name_to_file(f)
    end
    f = File.open("tmpfile") do |f|
      assert_equal "Ima Customer", f.gets
    end
    File.delete("tmpfile") if File.exist?("tmpfile")
  end
  def test_add_2
    c = Customer.new("Ima", "Customer")
    f = ""
    c.append_name_to_file(f)
    assert_equal "Ima Customer", f
  end
  def test_add_3
    c = Customer.new("Ima", "Customer")
    f = []
    c.append_name_to_file(f)
    assert_equal ["Ima", " ", "Customer"], f
  end
end

