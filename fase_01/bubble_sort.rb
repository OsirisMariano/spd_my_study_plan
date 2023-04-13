=begin 

O Bubble Sort é o algoritmo de classificação mais simples que funciona 
trocando repetidamente os elementos adjacentes se eles estiverem na ordem errada. 
Este algoritmo não é adequado para grandes conjuntos de dados, pois sua complexidade 
de tempo média e de pior caso é bastante alta.

O Bubble Sort é o algoritmo de classificação mais simples que funciona
trocando repetidamente os elementos adjacentes se eles estiverem na ordem errada.
Este algoritmo não é adequado para grandes conjuntos de dados, pois sua complexidade
de tempo médio e de pior caso é bastante alto.

link: https://www.geeksforgeeks.org/bubble-sort/

=end

def bubble_sort(lista)
  comprimento = lista.length
  loop do
    trocado = false
    (comprimento-1).times do|i|
      if
        lista[i] > lista[i+1]
        lista[i], lista[i+1] = lista[i+1], lista[i]
        trocado = true
      end
    end
    break if not trocado
  end
  lista
end

a = [4, 0, 3, 2, 9]
p bubble_sort(a)