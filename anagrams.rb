def first_anagram?(str, str2)
  str.split("").permutation.to_a.include?(str2.split(""))
end
#str.subsets

def second_anagram?(str1, str2)
  str1.each_char do |letter|
    if str2.include?(letter)
      str2 = str2.delete(letter)
    end
  end
  str2.empty? 
end


def third_anagram?(str1,str2)
    string1 = str1.split("").sort.join("")
    string2 = str2.split("").sort.join("")

    string1 == string2
  end


  def fourth_anagram?(str1, str2)
    hash = Hash.new(0)

    str1.each_char { |letter| hash[letter] += 1  }
    str2.each_char{ |letter| hash[letter] -= 1  }

    hash.each{|k,v| return false if v != 0}
    true
  
  end


p fourth_anagram?("gizmo", "sally")   
p fourth_anagram?("elvis", "lives")

#sort
#hash