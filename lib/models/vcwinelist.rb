require 'models/vinochippermodel'
require 'models/vcwinery'
require 'models/vcwine'
require 'models/vcstate'

class VCWineList < VinoChipperModel
  def initialize(deets)
    super
    self.winery    = VCWinery.new(winery)
    self.wines     = wines.map { |wine| (VCWine.new(wine))}
    self.ships_to  = ships_to.map { |state| (VCState.new(state))}
  end

  def to_s
    "Winery: #{winery}

Wines: #{wines.map{|wine| wine.to_s}}

Promotions: #{promotions}

Ships_to: #{ships_to.map{|state| state.to_s}}

Special_Shipping: #{special_shipping}"
  end
end
