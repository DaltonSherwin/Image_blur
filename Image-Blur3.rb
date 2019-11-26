class Image
  attr_accessor :matrix

  def initialize(array)
    @matrix = array
  end

  def output_image 
    @matrix.each_with_index do | row, row_index |
      row.each_with_index do | column, column_index |
        print "#{@matrix[row_index][column_index]} "
      end
      print "\n"
    end
  end

  def blur
    container = []
    @matrix.each_with_index do | row, row_index |
      row.each_with_index do | column, column_index |      
        if @matrix[row_index][column_index] == 1
          container << [row_index, column_index]
        end
      end
    end

    number_of_rows = @matrix.length
    number_of_columns = @matrix[0].length 
    container.each do |row_index, column_index|
      @matrix[row_index-1][column_index] = 1 unless row_index == 0
      @matrix[row_index][column_index-1] = 1 unless column_index == 0
      @matrix[row_index][column_index+1] = 1 unless column_index >= number_of_columns -1
      @matrix[row_index+1][column_index] = 1 unless row_index >= number_of_rows -1
    end
  end
end


 image = Image.new([
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 1]
])


image.blur()
image.blur()
image.blur()
image.output_image()
