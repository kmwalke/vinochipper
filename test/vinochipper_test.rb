require 'minitest/autorun'
require 'json'
require 'vinochipper'

class VinoChipperTest < Minitest::Test
  def test_wine_list
    Net::HTTP.stub :get_response, MockHttpResponse.new do
      assert_equal VCWineList, VinoChipper.wine_list(1).class
    end

  end
end

class MockHttpResponse < Minitest::Mock
  def body
    {
      "winery" => {
        "id" => 3005,
        "name" => "Slaymaker Cellars",
        "img" => "//storage.googleapis.com/cdn.vinoshipper.com/winery/358fd6b1-22ee-4ffa-9365-406c8971de67.png",
        "url" => "/json-api/v2/wine-list?id=3005",
        "key" => "slaymaker_cellars",
        "website" => "http://www.slaymakercellars.com",
        "phone" => nil,
        "email" => nil,
        "allowsPickup" => false,
        "facebookPixel" => nil
      },
      "wines" => [
        {
          "brand" => {
            "id" => nil,
            "name" => "Slaymaker Cellars",
            "img" => "//storage.googleapis.com/cdn.vinoshipper.com/winery/358fd6b1-22ee-4ffa-9365-406c8971de67.png"
          },
          "id" => 53925,
          "name" => "Traditional Mead",
          "img" => "//storage.googleapis.com/cdn.vinoshipper.com/wine/53925/2e48f84c-f8dd-4a64-b147-8c99a343468a.jpg",
          "description" => "Flowery text.",
          "wineMakerNote" => "",
          "inventory" => 150,
          "type" => "MEAD",
          "appellation" => {
            "id" => 132,
            "name" => "CO - Other",
            "country" => nil,
            "region" => nil
          },
          "varietal" => "Honey",
          "price" => 20.0,
          "msrp" => 20.0,
          "abv" => 13.5,
          "bottleSize" => {
            "description" => "750 mL",
            "numberOfBottles" => 1,
            "ml" => 750,
            "multiBottlePack" => false
          },
          "vineyard" => "",
          "winemaker" => "Slaymaker Cellars",
          "winery" => {
            "id" => 3005,
            "name" => "Slaymaker Cellars",
            "img" => "//storage.googleapis.com/cdn.vinoshipper.com/winery/358fd6b1-22ee-4ffa-9365-406c8971de67.png",
            "url" => "/json-api/v2/wine-list?id=3005",
            "key" => "slaymaker_cellars",
            "website" => "http://www.slaymakercellars.com",
            "phone" => nil,
            "email" => nil,
            "allowsPickup" => false,
            "facebookPixel" => nil
          },
          "minimumOrder" => 3,
          "maximumOrder" => 60,
          "increments" => 1,
          "caseSize" => 12,
          "future" => false,
          "nonWineProduct" => false,
          "pack" => false,
          "urlSlug" => "slaymaker_cellars/traditional_mead_53925",
          "awards" => [],
          "hasAnyBadge" => false,
          "hasExcludeFromDiscountBadge" => false,
          "hasClubMemberOnlyBadge" => false,
          "hasPickupOrLocalDeliveryOnlyBadge" => false,
          "hasInStateOnlyBadge" => false,
          "hidden" => false
        }
      ],
      "promotions" => [],
      "shipsTo" => [
        {"state" => "Alaska", "abbr" => "AK"},
        {"state" => "Arizona", "abbr" => "AZ"},
        {"state" => "Colorado", "abbr" => "CO"},
        {"state" => "Washington DC", "abbr" => "DC"},
        {"state" => "Florida", "abbr" => "FL"},
        {"state" => "Georgia", "abbr" => "GA"},
        {"state" => "Hawaii", "abbr" => "HI"},
        {"state" => "Iowa", "abbr" => "IA"},
        {"state" => "Idaho", "abbr" => "ID"},
        {"state" => "Illinois", "abbr" => "IL"},
        {"state" => "Indiana", "abbr" => "IN"},
        {"state" => "Kansas", "abbr" => "KS"},
        {"state" => "Louisiana", "abbr" => "LA"},
        {"state" => "Massachusetts", "abbr" => "MA"},
        {"state" => "Maryland", "abbr" => "MD"},
        {"state" => "Maine", "abbr" => "ME"},
        {"state" => "Minnesota", "abbr" => "MN"},
        {"state" => "Missouri", "abbr" => "MO"},
        {"state" => "North Carolina", "abbr" => "NC"},
        {"state" => "North Dakota", "abbr" => "ND"},
        {"state" => "Nebraska", "abbr" => "NE"},
        {"state" => "New Hampshire", "abbr" => "NH"},
        {"state" => "New Mexico", "abbr" => "NM"},
        {"state" => "Nevada", "abbr" => "NV"},
        {"state" => "New York", "abbr" => "NY"},
        {"state" => "Ohio", "abbr" => "OH"},
        {"state" => "Oklahoma", "abbr" => "OK"},
        {"state" => "Oregon", "abbr" => "OR"},
        {"state" => "Pennsylvania", "abbr" => "PA"},
        {"state" => "South Carolina", "abbr" => "SC"},
        {"state" => "Tennessee", "abbr" => "TN"},
        {"state" => "Texas", "abbr" => "TX"},
        {"state" => "Virginia", "abbr" => "VA"},
        {"state" => "Vermont", "abbr" => "VT"},
        {"state" => "Washington", "abbr" => "WA"},
        {"state" => "Wisconsin", "abbr" => "WI"},
        {"state" => "West Virginia", "abbr" => "WV"},
        {"state" => "Wyoming", "abbr" => "WY"}
      ],
      "specialShipping" => []
    }.to_json
  end
end