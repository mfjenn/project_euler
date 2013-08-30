result = 0 

for x in (100..999)
  for y in (100...999)
    sum = x*y
    if (sum.to_s == sum.to_s.reverse && sum > result)
      result = sum
      end 
    end
  end
puts result