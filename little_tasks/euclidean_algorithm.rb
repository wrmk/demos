def euclid(val1,val2)
  arr = [val1,val2].sort!

  while arr[0] != arr[1]
    arr[1] -= arr[0]
    arr.sort!
  end
  arr[0]
end

p euclid(240,1024)
