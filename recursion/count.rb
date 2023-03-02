class Count
  def self.call(array)
    return 0 if array == []
    1 + call(array[1..-1])
  end
end
