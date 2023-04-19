def bubblesort(arry, length)
  sorted = true

  for i in 0..(length - 2)
    if array [i] > arry[i + 1]
      arry[i], array[i + 1] = array[i + 1], array[i]
      sorted = false
    end
  end
  if sorted == false
    bubblesort(arry, length)
  else
    return arry
  end 
end

unsorted_arry = [6, 3, 0, 5]
sorted_arry   = bubblesort(unsorted_arry, unsorted_arry.length)

puts sorted_arry.inspect
puts "a ordem da lista ficou: #{sorted_arry}"
