def euclid(arg1,arg2)
  arr = [arg1,arg2].sort!

  while arr[0] != arr[1]
    arr[1] -= arr[0]
    arr.sort!
  end
  p arr
end

euclid(240,1024)
