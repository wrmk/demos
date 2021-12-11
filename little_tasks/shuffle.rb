def permutation(arr)
  #   permutation([1, 2]) => [1, 2]
  #   permutation([1, 2]) => [2, 1]
  #   permutation([1, 2, 3]) => [2, 1, 3]
    arr_copy = arr.dup
    arr2= []

    while arr_copy.size > 0
        random = rand(0...arr_copy.size)
        arr2 << arr_copy.delete_at(random) #добавляем в новый массив элемент который удалили из arr_copy
    end
    arr2
end

arr = [8,7,4,1,5,9]
p permutation(arr)
