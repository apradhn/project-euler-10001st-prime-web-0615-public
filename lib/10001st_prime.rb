def prime_number_for(nth_element)
  i = 1
  prime_count = 0
  loop do 
    i += 1
    if prime?(i)
      prime = i
      prime_count += 1
    end
    return prime if prime_count == nth_element
  end
end

def prime?(num)
  (2..(Math.sqrt(num).round)).none?{ |n| num % n == 0 }
end
