str = "fsdfsDfs"
result = []
if str[0].upcase == str[0]
  for i in 1...str.size do
    result << (str[i].upcase == str[i] ? true : false)
  end
  if result.select{|el| el == true}.size == str.size - 1 || result.select{|el| el == false}.size == str.size - 1
    p true
  else
    p false
  end
else
  for i in 1...str.size do
    if str[i].upcase == str[i]
      p false
      break
    end
  end
end
