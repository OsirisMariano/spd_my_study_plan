#Entrada arr = [] {-2, 0, 5, -1, 2}, K = 4
#saída: 10
#Explicação:

#1. Substitua (-2) por -(-2), a matriz se torna {2, 0, 5, -1, 2}
#2. Substitua (-1) por -(-1), a matriz se torna {2, 0, 5, 1, 2}
#3. Substitua (0) por -(0), a matriz se torna {2, 0, 5, 1, 2}
#4. Substitua (0) por -(0), a matriz se torna {2, 0, 5, 1, 2}

# Exercicio prático: arr[] = {9, 8, 8, 5}, k = 3

#primeiro vamos ordenar o array
def max_soma (array, k)

  n = k

  while n > 0 
    array[array.index(array.min)] *= -1
    n -= 1
  end
  return array.sum
end

array = [9, 8, 8, 5]
k = 3
puts max_soma(array, k)
