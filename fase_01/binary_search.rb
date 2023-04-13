=begin

Problem: Given a sorted array arr[] of n elements, 
write a function to search a given element x in arr[] 
and return the index of x in the array. Consider array is 0 base index.

Problema: Dado um array ordenado arr[] de n elementos,
escreva uma função para pesquisar um determinado elemento x em arr[]
e retorne o índice de x no array. Considere que a matriz é um índice de base 0.

link: https://www.geeksforgeeks.org/binary-search/

=end
#Linha que define a função chamada 'busca_binaria' com dois parâmentros: 'arr' (o array
#ordenado de entreda) e 'x' (o elemento que desejamos buscar no arry)
def busca_binaria(arr, x)

  #Essas duas linhas inicializam duas variáveis 'esquerda' e 'direita'
  esquerda = 0
  direita = arr.length - 1
  
  while esquerda <= direita
    meio = (esquerda + direita) / 2
    if arr[meio] == x
      return meio
    elsif arr[meio] < x
      esquerda = meio + 1
    else
      direita = meio - 1
    end
  end

  #Se o elemento não foi encontrado, retorna -1
  return -1
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
x = 7

indice = busca_binaria(arr, x)

puts "O indice do lemento #{x} no array é #{indice}"