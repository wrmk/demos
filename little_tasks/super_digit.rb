def super_digit1(val)
  val = val.digits.sum
  if val > 9
    val = super_digit1(val)
  end
  val
end

def super_digit2(val)
  while val > 9
    val = val.digits.sum
  end
  val
end


#super_digit(1) = 1
#super_digit(10) = 1 + 0 = 1
#super_digit(12345) = 1 + 2 + 3 + 4 + 5 == 15 =>  1 + 5 = 6

p super_digit1(123456)
