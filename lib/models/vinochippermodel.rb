require 'util/string'

class VinoChipperModel
  def initialize(deets)
    @deets = deets
  end

  def respond_to_missing?(method_name, _include_private = false)
    @deets.keys.include? method_name.to_s
  end

  def method_missing(*args)
    message = args[0].to_s.camel_case_lower
    if message.end_with?('=')
      @deets[message.chomp!('=')] = args[1]
    else
      @deets[message] || super
    end
  end

  def keys
    @deets.keys
  end
end
