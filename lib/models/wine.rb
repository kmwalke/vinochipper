require 'models/vinochippermodel'

class Wine < VinoChipperModel
  def to_s
    "id:'#{id}' name:'#{name}' abv:'#{abv}'"
  end
end
