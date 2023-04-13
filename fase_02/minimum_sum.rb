=begin
  
Find the minimum sum of Products of two arrays of the same size, given that k modifications 
are allowed on the first array. In each modification, one array element of the first 
array can either be increased or decreased by 2.
Examples: 

Input : a[] = {1, 2, -3}
        b[]  = {-2, 3, -5}
           k = 5
Output : -31
Explanation:
Here n = 3 and k = 5. 
So, we modified a[2], which is -3 and 
increased it by 10 (as 5 modifications 
are allowed).
Final sum will be :
(1 * -2) + (2 * 3) + (7 * -5)
   -2    +    6    -    35
             -31
(which is the minimum sum of the array 
with given conditions)

Input : a[] = {2, 3, 4, 5, 4}
        b[] = {3, 4, 2, 3, 2}
        k = 3
Output : 25
Explanation: 
Here, total numbers are 5 and total 
modifications allowed are 3. So, modify 
a[1], which is 3 and decreased it by 6 
(as 3 modifications are allowed).
Final sum will be :
(2 * 3) + (-3 * 4) + (4 * 2) + (5 * 3) + (4 * 2)
   6    –    12    +    8    +    15   +    8
                        25
(which is the minimum sum of the array with 
given conditions)

Since we need to minimize the product sum, we find the maximum product and reduce it. 
By taking some examples, we observe that making 2*k changes to only one element 
is enough to get the minimum sum. Based on this observation, we consider every element 
as the element on which we apply all k operations and keep track of the element 
that reduces result to minimum.  

=end

def min_sum_of_products(a, b, k)
  n = a.size
  max+products = Array.new(n)

  for i in 0...n
    max_products[i] =a[i] * b[i]
    for j in 1..k
        temp_product = (a[i] + j*2) * b[1]
        max_products[i] = [max_products[i], temp_product].max
  end
end