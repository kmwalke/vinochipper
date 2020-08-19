require 'minitest/autorun'
require 'models/vcwinelist'
require 'json'

class VCWineListTest < Minitest::Test
  def setup
    @deets = {
      "winery" => {
        "id" => 1,
        "name" => "Winery Name",
      },
      "wines" => [
        {
          "id" => 1,
          "name" => "Traditional Mead",
        },
        {
          "id" => 2,
          "name" => "Sweet Mead",
        }
      ],
      "promotions" => [],
      "shipsTo" => [
        {"state" => "Alaska", "abbr" => "AK"},
        {"state" => "Wyoming", "abbr" => "WY"}
      ],
      "specialShipping" => []
    }

    @wine_list = VCWineList.new(@deets)

    super
  end

  def test_winery
    assert_equal VCWinery, @wine_list.winery.class
  end

  def test_wines
    assert_equal VCWine, @wine_list.wines[0].class
    assert_equal VCWine, @wine_list.wines[1].class
  end

  def test_states
    assert_equal VCState, @wine_list.ships_to[0].class
    assert_equal VCState, @wine_list.ships_to[1].class
  end
end
