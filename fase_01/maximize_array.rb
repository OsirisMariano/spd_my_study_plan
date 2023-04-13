=begin

Given an array of size n and a number k. We must modify array K a number of times. 
Here modify array means in each operation we can replace any array 
element arr[i] by -arr[i]. We need to perform this operation in such a way 
that after K operations, the sum of the array must be maximum?

Dado um array de tamanho n e um número k. Devemos modificar a matriz K várias vezes.
Aqui modificar array significa que em cada operação podemos substituir qualquer array
elemento arr[i] por -arr[i]. Precisamos realizar esta operação de tal maneira
que após K operações, a soma do array deve ser máxima?


link:https://www.geeksforgeeks.org/maximize-array-sum-after-k-negations-using-sorting/
=end

module Maximize
  class MaximumSum
    attr_reader :array
    attr_accessor :number

    def initialize(array, number)
      @array = array.split(",").map(&:to_i)
      @number = number
    end

    def maximize_sum
      sum = 0
      number.times do
        position = array.min
        index = array.index(position)
        array[index] = -array[index]
      end
      array.length.times do |i|
        sum += array[i]
      end
      "The maximum sum is: #{sum}"
    end
  end
end