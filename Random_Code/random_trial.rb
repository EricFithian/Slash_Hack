words = ["a", "ab", "abc", "go away Michael", "sorry"]
results = []

words.each do |word|
  if word.length <=5
    results << word
  end
end

return results
