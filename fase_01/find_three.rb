=begin

Given an array with all distinct elements, find the largest three elements. 
Expected time complexity is O(n) and extra space is O(1). 

Examples :

Input: arr[] = {10, 4, 3, 50, 23, 90}
Output: 90, 50, 23

Dada uma matriz com todos os elementos distintos, encontre os três maiores elementos.
A complexidade de tempo esperada é O(n) e o espaço extra é O(1).

Exemplos :

Input: arr[] = {10, 4, 3, 50, 23, 90}
Output: 90, 50, 23

link: https://www.geeksforgeeks.org/find-the-largest-three-elements-in-an-array/


=end


arr = [10, 4, 3, 50, 23, 90]
max1 = max2 = max3 = -Float::INFINITY 

arr.each do |num|
  if num > max1
    max3 = max2
    max2 = max1
    max1 = num
  elsif num > max2
    max3 = max2
    max2 = num
  elsif num > max3
    max3 = num
  end
end

puts "#{max1}, #{max2}, #{max3}"