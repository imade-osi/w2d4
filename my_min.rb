

def my_min(array)
  min = array[0]

  array.each_with_index do |ele1, idx1|
    array.each_with_index do |ele2, idx2| 
      # p array[idx1+1...array.length]
      # p min
        if ele2 < min && idx2 > idx1
          min = ele2
        end
    end
  end
  min
end

def my_min2(array)
  min = array[0]

  array.each do |ele|
    min = ele if ele < min
  end
  min
end
# p my_min([1,3,8,-5,2])
# p my_min2([1,3,8,-5,2])

def sub_sum(array) 
    sub_arr = []
    max = array[0]
    array.each_with_index do |ele1, idx1| 
      array.each_with_index do | ele2, idx2| 
          current_array = array[idx1..idx2].sum
          max = current_array if idx2 >= idx1 && current_array > max
      end
    end
  max
end 

def sub_sum2(array) 
    
    return array.max if array.all?{|el| el < 0}
    max = array[0]
    current_sum = 0

    array.each do |ele|
      current_sum += ele
      max = current_sum if current_sum > max
      current_sum = 0 if current_sum < 0 
    end
  max
end 

# p sub_sum2([2, 3, -6, 7, -6, 7]) #[1,2,-4,2,-3,1]
# p sub_sum2([-5, -1, -3])