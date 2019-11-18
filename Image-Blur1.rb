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

end




image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image()






#a = [ "a", "b", "c" ]
#a.each {|x| print x, " -- " }