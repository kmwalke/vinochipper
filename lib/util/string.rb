class String
  def camel_case_lower
    split('_').inject([]) { |buffer, e| buffer.push(buffer.empty? ? e : e.capitalize) }.join
  end
end
