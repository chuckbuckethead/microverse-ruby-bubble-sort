def bubble_sort(arr)
  arr_length = arr.length
  for i in 0..(arr_length - 1) do
    left_i = i
    right_i = i + 1

    if(right_i > (arr_length - 1))
      right_i = arr_length - 1
    end

    left = arr[left_i]
    right = arr[right_i]

    if(left > right)
      arr[left_i] = right
      arr[right_i] = left
    end
  end

  return arr
end

print bubble_sort([5, 3, 1, 6, 7, 2, 4, 8])
print "\n"
