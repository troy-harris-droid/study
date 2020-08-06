
class Rotate

  def is_rotation(arrayA, arrayB)
     index2, result = 0, 0
     a_size, b_size = arrayA.size, arrayB.size

     return false if a_size != b_size
     
     arrayA.each do |a|
       until a == arrayB[index2]
         index2 += 1
         return false if index2 > b_size
       end

      index2 = (index2 + 1) % b_size # modulo magic
      result += 1 
     end

    result == a_size

  end
end
