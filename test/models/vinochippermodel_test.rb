require 'minitest/autorun'
require 'models/vinochippermodel'

class VinoChipperModelTest < Minitest::Test
  def setup
    @deets = {
      'foo' => 'bar',
      'hello' => 'world',
      'threeWordKey' => 'value'
    }
    @model = VinoChipperModel.new(@deets)

    super
  end

  def test_keys
    assert_equal @deets.keys, @model.keys
  end

  def test_reader
    assert_equal 'bar', @model.foo
  end

  def test_multi_word_reader
    assert_equal 'value', @model.three_word_key
  end

  def test_writer
    @model.foo = 'baz'
    assert_equal @model.foo, 'baz'
  end

  def test_multi_word_writer
    @model.three_word_key = 'no values'
    assert_equal @model.three_word_key, 'no values'
  end

  def test_method_missing
    assert_raises NoMethodError do
      @model.not_a_method
    end
  end
end
