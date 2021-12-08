def super_digit(val)#
  val2 = val.to_s.chars.reduce(0){|res,elem| res + elem.to_i}
  if val2 > 9
    val2 = super_digit(val2)
  end
  val2
end
#super_digit(1) = 1
#super_digit(10) = 1 + 0 = 1
#super_digit(12345) = 1 + 2 + 3 + 4 + 5 == 15 =>  1 + 5 = 6

p super_digit(12345)
