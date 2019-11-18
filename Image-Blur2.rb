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
    #find all values of "1"
    #after we find "1" add the value of 1 around it

    container = []
    @matrix.each_with_index do | row, row_index |
      row.each_with_index do | column, column_index |      
        if @matrix[row_index][column_index] == 1
          #add row index and column index
          #to container
        end
      end
    end


        container.each do |row_index, column_index|

          @matrix[row_index-1][column_index] = 1
          @matrix[row_index][column_index-1] = 1
          @matrix[row_index][column_index+1] = 1
          @matrix[row_index+1][column_index] = 1
        end
  end
end


 image = Image.new([
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 1, 0],
  [0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0]
])

# perform the blur action (ie. change all 0's to 1's around any given 1's
# a << [1,2]
image.blur()
image.output_image()
