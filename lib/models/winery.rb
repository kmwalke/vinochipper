require 'models/vinochippermodel'

class Winery < VinoChipperModel
  def to_s
    "id: #{id} name: #{name}"
  end
end
