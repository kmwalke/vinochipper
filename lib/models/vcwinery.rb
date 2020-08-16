require 'models/vinochippermodel'

class VCWinery < VinoChipperModel
  def to_s
    "id: #{id} name: #{name}"
  end
end
