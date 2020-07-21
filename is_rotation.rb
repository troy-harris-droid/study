
class Rotate

  def is_rotation(arrayA, arrayB)
     index = 0
     result = 0
     a_size = arrayA.size
     b_size = arrayB.size

     return false if a_size != b_size
     
     arrayA.each do |na|
       # Find start index for our A == B
       if result == 0
         until na == arrayB[index] do
           index += 1
           result = 1
           return false if index == b_size
         end
       end

       if index < b_size
         result += 1 if na == arrayB[index]
         index += 1
       else
         index = 0
         result += 1 if na == arrayB[index]
       end
     end

     result == b_size

  end
end

