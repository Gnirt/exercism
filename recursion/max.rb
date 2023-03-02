class Max
  def self.call(array)
#    return array[0] if array.length <= 1
#    if array[1] > array[0]
#      array.delete_at(0)
#    else
#      array.delete_at(1)
#    end
#    call(array)
    return nil if array.empty?
    return array[0] if array.length == 1
    sub_max = call(array[1..-1])
    array[0] > sub_max ? array[0] : sub_max
  end
end
