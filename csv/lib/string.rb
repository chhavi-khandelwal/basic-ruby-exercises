class String
  def pluralize(count)
    count > 1 ? self + 's' : self
  end
end