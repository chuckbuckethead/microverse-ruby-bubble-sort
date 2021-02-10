def bubble_sort(arr)
  arr_length = arr.length
  last_element_i = arr_length - 1

  loop do
    swapped = false

    arr.each_with_index do |_, i|
      left_i = i
      right_i = i + 1

      break if right_i > last_element_i

      left = arr[left_i]
      right = arr[right_i]

      next unless left > right
      
      arr[left_i] = right
      arr[right_i] = left
      swapped = true
    end

    break unless swapped
  end

  arr
end

unsorted = (1..10).to_a.reverse!
print bubble_sort(unsorted)
print "\n"

def bubble_sort_by(str)
  i = 0

  while i < str.size - 1
    comp = yield(str[i], str[i + 1])

    if comp.positive?
      str[i], str[i + 1] = str[i + 1], str[i]
      i = 0

    else

      i += 1

    end
  end

  str
end

result = (bubble_sort_by(%w[h hey hi hello hiya]) { |left, right| left.length - right.length })

p result
