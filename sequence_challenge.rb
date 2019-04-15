def find_missing_number(sequence)
    sequence_array = sequence.split(' ')
    integer_array = sequence_array.map do |element|
      element.to_i
    end
    
    integer_array = integer_array.sort
    array = []
    for x in (1...integer_array.length + 1)
      array.push(x)
    end 
    
    array.each_with_index do |element, index|
      if element != integer_array[index]
        return element
      end
    end
    
    if integer_array.include? 0
      return 1
    end
    
    if array == integer_array
      return 0
    end
    
  end