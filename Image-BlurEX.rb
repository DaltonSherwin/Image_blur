class Image
  attr_accessor :matrix
  
  def initialize(array)
    @matrix = array
  end

  # example .each loop
  # arr = [ 100, 200, 300]
    # arr.each do | num |
    #   print num
  # end

  # example .each_with_index loop
  # arr = [ 100, 200, 300]
  # arr.each_with_index do | num, num_index |
  #   print "#{num} has index #{num_index}"
  #   print "\n"
  # end

  # also...
  # @matrix[1][1]  ===> 1
  # @matrix[2][3]  ===> 1
  # everything else is 0
  # just remember: RC Cola
  
  def output_image()
    @matrix.each do | row |

      # print all the elements of each row, with a space between each number
      row.each do | num |
        print "#{num} "
      end

      print "\n" # add a new line
    end
  end

  def output_image_2()
    # TODO: implement similar to above, but use .each_with_index for all the loops
  end
end

my_image = Image.new(
  [
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
  ]
)
my_image.output_image()
