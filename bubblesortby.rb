def bubble_sort_by(str)
  i = 0

  while i < str.length - 1
    comp = yield(str[i], str [i + 1])

    if comp > 0
      str[i], str[i + 1] = str[i + 1], str [i]
      i = 0

    else

      i += 1

    end
  end
  print str
end

bubble_sort_by(["hi", "hello", "hey", "idkwgh",]) do |left, right|
  left.length - right.length
end
