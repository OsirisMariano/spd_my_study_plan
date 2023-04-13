=begin
  
Like Binary Search, Jump Search is a searching algorithm for sorted array.
The basic idea is to check fewer elements(than linear search) by jumping ahead by 
fixed steps or kipping some elements in palce of searching all elements.

For example, suppose we have an array[] of size n and a block, (to be jumped)
of size m. Then we search in the indexes arr[0], arr[m], arr[2m]... an so on.

Once we find the inteval (arr[km] < x < arr[(k+1)m]), we perform a linear search
opeation from the index km to find the element x
  
=end

def jump_search(arr, x)
  n = arr.length
  m = Math.sqrt(n).to_i

  block_start = 0
  while block_start < n && arr[block_start] < x
    block_start += m
  end

  for i in block_start-m...[block_start, n].min
    if arr[i] == x
      return i
    end
  end

  return -1
end

# Exemplo de uso:
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
elemento_procurado = 8

resultado = jump_search(array, elemento_procurado)

if resultado != -1
  puts "Elemento encontrado no índice #{resultado}"
else
  puts "Elemento não encontrado"
end
