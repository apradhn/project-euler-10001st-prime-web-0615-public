class Prime
  attr_reader :nth_element

  def initialize(nth_element)
    @nth_element = nth_element
  end

  def number
    i = 1
    prime_count = 0
    loop do 
      i += 1
      if self.prime?(i)
        prime = i
        prime_count += 1
      end
      return prime if prime_count == self.nth_element
    end
  end

  def prime?(num)
    (2..(Math.sqrt(num).round)).none?{ |n| num % n == 0 }
  end

end