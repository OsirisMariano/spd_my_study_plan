=begin
  Given an array arr[] of size N-1 with integers in the range of [1,N], the task is
  to find the missing number form the first N integers

  Note: There are no duplicates in the list

  Ex.: Input: arr[] = {1, 2, 4, 6, 3, 7, 8}, N = 8
       Output: 5
  explanation: The missing number between 1 to 8 is 5
  
  Input: arr[] = {1, 2, 3, 5}, N = 5
  Output: 4
  Explanation: The missing number between 1 to 5 is 4

  Portugues:

  Dada uma matriz arr[] de tamanho N-1 com inteiros no intervalo de [1, N], a tarefa
  é encontrar o número que falta dos primeiros N inteiros

  Obs.: Não há duplicatas na lista

  Ex.: Entrada: arr[] = {1, 2, 4, 6, 3, 7, 8}, N = 8
       Saida: 5
       Explicação: O número que falta entre 1 a 8 é 5
=end

def encontrar_numero_faltante(arr, n)
     soma_total = (n * (n + 1)) / 2
     soma_arr = arr.sum
     return soma_total - soma_arr
     
end

arr = [1, 2, 4, 6, 3, 7, 8]
n = 8
numero_faltante = encontrar_numero_faltante(arr, n)

puts "O número que falta é: #{numero_faltante}"
