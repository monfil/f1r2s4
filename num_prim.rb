require 'prime'

def prime_numbers(n)
  Prime.first n
end

def prime_factors(n)
  factors = []
  quotient = n
  prime_numbers(n).each do |m|
    if  quotient == 1
      break
    else
      while quotient % m == 0
        factors << m
        quotient = quotient / m
      end
    end
   end 
  factors
end

p prime_factors(4) == [2, 2]
p prime_factors(9) == [3, 3]
p prime_factors(1200) == [2, 2, 2, 2, 3, 5, 5]
p prime_factors(6936) == [2, 2, 2, 3, 17, 17]