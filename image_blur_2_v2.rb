class Image
    
    def initialize(array)
      @array = array
    end
  
    def output_image
      @array.each do |arrays|
        puts arrays.join
      end
    end

    def find_coordinates   
      @array.map.with_index do |inner_array, y|
        inner_array.each_with_index do |number, x|
          [x, y] if number == 1
        end
      end
    end

    def set_north
      @array.each_with_index do |row, column|
        row.each_with_index do |element, index|
          @array[column - 1][index] = '1' if element == 1 && column != 0 && @array[column - 1][index] == 0 
        end
      end
    end

    def set_south
      @array.each_with_index do |row, column|
        row.each_with_index do |element, index|
            @array[column + 1][index] = '1' if element == 1 && column != @array.length - 1 && @array[column + 1][index] == 0
        end
      end
    end

    def set_east
      @array.each_with_index do |row, column|
        row.each_with_index do |element, index|
          row[index + 1] = '1' if element == 1 && index != row.length - 1                      
        end
      end
    end

    def set_west
      @array.each_with_index do |row, column|
        row.each_with_index do |element, index|
          row[index - 1] = '1' if element == 1 && index != 0
        end
      end
    end
  
    def blur   
      @array.each_with_index do |row, column|
        row.each_with_index  do |element, index|
          find_coordinates.each do |coord_pair|
            set_north && set_south && set_east && set_west if coord_pair[0] == index && coord_pair[1] == column   
          end
        end
      end
    end

end
  
  image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 1, 0]
    ])

  image.blur

  image.output_image