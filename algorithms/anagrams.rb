def anagram?(word1, word2)
  word1.split('').each do |letter|
    if  word2.include? letter
      nil
    else 
      return false
    end
  return true
end
end

p anagram?('hello', 'byebye') #False

p anagram?('racecar', 'carrace') #True
