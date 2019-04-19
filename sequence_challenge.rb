def find_missing_number(sequence)
  sequence_array = sequence.split(' ').collect{|i| i.to_i}.sort
  integer_array = sequence_array.map.with_index(1) do |element, index| 
    if element != 0
      return index if element != index
    end  
    return 1 if element == 0
  end
  0
end