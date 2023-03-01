=begin
Write your code for the 'Saddle Points' exercise in this file. Make the tests in
`saddle_points_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/saddle-points` directory.
=end
class Matrix
  attr_reader :rows, :columns

  def initialize(matrix_string)
    @rows = matrix_string.split("\n").map{|row| row.split(' ').map(&:to_i) }
    @columns = []
    @rows.max.length.times {|columns_index| @columns << @rows.map{|row| row[columns_index]}}
  end

  def saddle_points
    saddle_points = []
    rows.each_with_index do |row, row_index|
      row_max = row.max
      row.each_with_index do |points, col_index|
        column_min = columns[col_index].min 
        saddle_points << [row_index, col_index] if points <= column_min && points >= row_max 
      end
    end
    saddle_points
  end
end
