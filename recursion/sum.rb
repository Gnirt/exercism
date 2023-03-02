class Sum
  def self.call(array)
    return array[0] if array.length <= 1
    array.pop + call(array)
  end
end
