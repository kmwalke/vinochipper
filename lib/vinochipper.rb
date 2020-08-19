require 'json'
require 'net/http'

require 'models/vcwinelist'

class VinoChipper

  BASE_URL = 'https://vinoshipper.com/json-api/v2/'.freeze

  def self.hi
    puts 'hello world'
  end

  def self.wine_list(id)
    response = Net::HTTP.get_response(URI.parse(BASE_URL + 'wine-list?id=' + id.to_s))
    VCWineList.new(JSON.parse(response.body))
  end
end
