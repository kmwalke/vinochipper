require 'models/vinochippermodel'
require 'models/winery'
require 'models/wine'
require 'models/state'

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
