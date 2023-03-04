class Quicksort

  class << self
    def call(array)
      return array if array.length < 2

      pivot = array[0]
      bigger = []
      lesser = []
      array[1..-1].each do |element|
        if element <= pivot
          lesser << element
        else
          bigger << element
        end
      end
      (call(lesser) << pivot) + call(bigger)
    end
  end
end
