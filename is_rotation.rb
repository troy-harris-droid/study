
class Rotate

  def is_rotation(arrayA, arrayB)
     a_size, b_size = arrayA.size, arrayB.size

     return false if a_size != b_size
     index = find_start_index(arrayA[0], arrayB)
     return false if index.nil? 

     arrayA.each do|a|
      return false if a != arrayB[index]
      index = (index + 1) % b_size # modulo magic
     end

    true 

  end

  private 

  def find_start_index(value, array)
    index = 0
    until value == array[index]
      index += 1
      return nil if index > array.size
    end
    index
  end

end
