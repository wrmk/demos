def valid?(word)
  result = []
  if word[0].upcase == word[0]
    for i in 1...word.size do
      result << (word[i].upcase == word[i] ? true : false)
    end
    if result.count(true) == word.size - 1 || result.count(false) == word.size - 1
      true
    else
      false
    end
  else
    for i in 1...word.size do
      if word[i].upcase == word[i]
        return false
      elsif i == word.size - 1
        return true
      end
    end
  end
end

str = %w[Hello hello HELLO heLlo HellO]

str.each{|word| p valid?(word)}
