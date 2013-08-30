sum = 0

def fib(num)
   i, j = 0, 1
   while i <= num
     yield i
     i, j = j, i + j
   end
 end

fib(4000000) do |i| 

if i % 2 == 0
   sum = (sum + i) 
  end
end
 
puts sum
   
