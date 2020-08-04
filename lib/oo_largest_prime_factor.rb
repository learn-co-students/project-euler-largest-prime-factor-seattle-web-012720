# Enter your object-oriented solution here!
class LargestPrimeFactor
  attr_reader :n

  def initialize(n)
    @n = n
  end


  def is_prime(m)
    i = 2
    while i <= m/2 do
      if m % i == 0
        return false
      end
      i += 1
    end
    return true
  end
  
  def number
    i = 1
    while i <= n/2 do
      if n % i == 0 && is_prime(n/i)
        return n/i
      end
      i += 1
    end
  end
end