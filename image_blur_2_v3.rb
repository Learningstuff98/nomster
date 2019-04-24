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
      new_array = [] 
      @array.each_with_index do |inner_array, y|
        inner_array.each_with_index do |number, x|
          new_array.push([x, y]) if number == 1
        end
      end
      new_array
    end

    def set_north(x, y)
      if x - 1 >= 0 && @array[x - 1][y] == 0
        @array[x - 1][y] = 1
      end
    end

    def set_south(x, y)
      if x + 1 <= @array.length - 1 && @array[x + 1][y] == 0
        @array[x + 1][y] = 1
      end    
    end

    def set_east(x, y)
      if y + 1 <= @array[x].length - 1
        @array[x][y + 1] = 1                
      end
    end

    def set_west(x, y)
      if y != 0
        @array[x][y - 1] = 1
      end
    end

    def blur   
      find_coordinates.each do |y, x|
        set_north(x, y) 
        set_south(x, y)
        set_east(x, y)
        set_west(x, y)   
      end
    end

end
  
  image = Image.new([
    [1, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 0]
    ])

  image.blur

  image.output_image