def brute?(arr, target)
  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
      return true if ele1+ ele2 == target && idx2 > idx1
    end
  end
  false
end

def sorted?(arr,target)
  arr = arr.sort
  arr.each_with_index { |ele, idx| b_search(arr[idx+1..-1], target-ele)? (return true) : next }
  false
end

def b_search (arr, target)
    return false if arr.length == 0
    mid = arr.length / 2
    if target < arr[mid] 
     return  b_search(arr[0...mid], target)
    elsif target > arr[mid] 
      b_search(arr[mid+1..arr.length], target)
    else target == arr[mid] 
      return true
    end
    false
end
# require "byebug"
def hash?(arr, target)
  hash = Hash.new(0)
  arr.each { |ele| hash[ele] += 1 }
  hash.each {|k,v| return true if hash.has_key?(target - k) && (target - k != k unless v > 1)}
  false
end



arr = [0, 1, 5, 7]
p hash?(arr, 6) # => should be true
p hash?(arr, 10) # => should be false