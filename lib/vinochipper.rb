class Vinochipper
  require 'json'
  require 'net/http'

  BASE_URL = 'https://vinoshipper.com/json-api/v2/'.freeze

  def self.hi
    puts 'hello world'
  end

  def self.wine_list(id)
    response = Net::HTTP.get_response(URI.parse(BASE_URL + 'wine-list?id=' + id.to_s))
    WineList.new(JSON.parse(response.body))
  end
end

class String
  def camel_case_lower
    self.split('_').inject([]){ |buffer,e| buffer.push(buffer.empty? ? e : e.capitalize) }.join
  end
end

class VinoChipperModel
  def initialize(deets)
    @deets = deets
  end

  def method_missing(*args)
    message = args[0].to_s.camel_case_lower
    if message.end_with?('=')
      @deets[message.chomp!('=')] = args[1]
    else
      @deets[message] || super
    end
  end

  def to_s
    @deets.keys
  end

end


class WineList < VinoChipperModel
  def initialize(deets)
    super
    self.winery    = Winery.new(winery)
    self.wines     = wines.map { |wine| (Wine.new(wine))}
    self.ships_to  = ships_to.map { |state| (State.new(state))}
  end

  def to_s
    "Winery: #{winery}

Wines: #{wines.map{|wine| wine.to_s}}

Promotions: #{promotions}

Ships_to: #{ships_to.map{|state| state.to_s}}

Special_Shipping: #{special_shipping}"
  end
end

class Winery < VinoChipperModel
  def to_s
    "id: #{id} name: #{name}"
  end
end

class Wine < VinoChipperModel
  def to_s
    "id:'#{id}' name:'#{name}' abv:'#{abv}'"
  end
end

class State < VinoChipperModel
  def to_s
    self.state
  end
end


puts Vinochipper.wine_list(3005).to_s
