# Enter your procedural solution here!

def is_prime(n)
  i = 2
  while i <= n/2 do
    if n % i == 0
      return false
    end
    i += 1
  end
  return true
end

def largest_prime_factor(n)
  i = 1
  while i <= n/2 do
    if n % i == 0 && is_prime(n/i)
      return n/i
    end
    i += 1
  end
end
