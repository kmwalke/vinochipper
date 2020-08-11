require 'models/vinochippermodel'

class State < VinoChipperModel
  def to_s
    self.state
  end
end
