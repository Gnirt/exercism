class BinarySearch
  attr_reader :sorted_array

  def initialize(sorted_array)
    @sorted_array = sorted_array
  end

  def call(search_val)
    if sorted_array.length == 1
      return search_val == sorted_array[0] ? search_val : nil
    end
    half = sorted_array.length / 2
    if search_val == sorted_array[half]
      return search_val
    elsif sorted_array[half] > search_val
      half_array = sorted_array[0...half]
    else
      half_array = sorted_array[half..-1]
    end
    BinarySearch.new(half_array).call(search_val)
  end
end
