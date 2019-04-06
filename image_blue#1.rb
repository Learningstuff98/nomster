image = ([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
  ])

  def output_image(array)
    array.each do |arrays|
      elements_to_strings = ''
      arrays.each do |elements|
        elements = elements.to_s
        elements_to_strings += elements
      end
      puts elements_to_strings
    end
  end

  output_image(image)