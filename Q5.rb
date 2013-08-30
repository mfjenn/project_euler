# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# result =[]
# 
# sum = []
# for x in (1..20)
#   for y in (1...20)
#      x * y = sum
#      if sum % (1..20) == 0
#        sum >> result
#      end
#     end
#   end
# puts result.first

# 
# (1..20).inject(:lcm)

def find_multiple
  lcm = 1

  (2..20).each do |i|
    lcm *= i / gcd(lcm, i)
  end

  lcm
end

def gcd(a, b)
  while b > 0
    a %= b
    return b if a == 0
    b %= a
  end

  a
end

puts find_multiple