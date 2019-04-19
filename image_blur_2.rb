class Image
    
    def initialize(array)
      @array = array
    end
  
    def output_image
      @array.each do |arrays|
        puts arrays.join
      end
    end

    def transform
      @array.each_with_index do |inner_array, inner_array_index_value|
        inner_array.each_with_index do |element, index|
          if element == 1 
            if inner_array_index_value != 0
              @array[inner_array_index_value - 1][index] = '1'    # top
            end
            if index != 0
              inner_array[index - 1] = '1'                        # left                     
            end
            if index != inner_array.length - 1
              inner_array[index + 1] = '1'                        # right
            end
            if inner_array_index_value != @array.length - 1
              @array[inner_array_index_value + 1][index] = '1'    # bottom
            end
          end
        end
      end
    end
  

end
  
  image = Image.new([
    [0, 0, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0],
    [1, 0, 0, 0]
    ])
  
  image.transform

  image.output_image