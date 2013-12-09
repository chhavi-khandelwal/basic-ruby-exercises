class String
  def is_valid_price?
    self =~ /^[+]?\d+(\.\d+)?$/ ? true :false
  end

  def is_valid_name?
    self =~ /^[\w+\s?]+$/ ? true : false
  end
end