require 'models/vinochippermodel'

class VCState < VinoChipperModel
  def to_s
    self.state
  end
end
