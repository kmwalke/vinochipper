require 'models/vinochippermodel'

class VCWine < VinoChipperModel
  def to_s
    "id:'#{id}' name:'#{name}' abv:'#{abv}'"
  end
end
