def bubble_sort(arr)
  arr_length = arr.length
  last_element_i = arr_length - 1

  arr.each_with_index do |_, i|
    left_i = i
    right_i = i + 1

    right_i = last_element_i if right_i > last_element_i

    left = arr[left_i]
    right = arr[right_i]

    if left > right
      arr[left_i] = right
      arr[right_i] = left
    end
  end

  arr
end

print bubble_sort([5, 3, 1, 6, 7, 2, 4, 8])
print "\n"

def bubble_sort_by(str)
  i = 0

  while i < str.length - 1
    comp = yield(str[i], str [i + 1])

    if comp.positive?
      str[i], str[i + 1] = str[i + 1], str [i]
      i = 0

    else

      i += 1

    end
  end
  print str
end

bubble_sort_by(%w[hi hello hey idkwgh]) do |left, right|
  left.length - right.length
end
