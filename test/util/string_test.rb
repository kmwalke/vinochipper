require 'minitest/autorun'
require 'util/string'

class StringTest < Minitest::Test
  def test_camel_case_lower
    camel_string = 'this_is_a_string'
    assert_equal 'thisIsAString', camel_string.camel_case_lower
  end
end
