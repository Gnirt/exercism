=begin
Write your code for the 'Sieve' exercise in this file. Make the tests in
`sieve_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sieve` directory.
=end

class Sieve
  attr_reader :max_range

  def initialize(max_range)
    @max_range = max_range
  end

  def primes
    composites = []
    primes = [2]
    return primes if max_range == 2
    
    while primes.last <= max_range
      composites = add_composites(primes.last, composites)
      primes << find_next_prime(primes, composites)
    end
    primes.pop
    primes
  end

  def add_composites(last_prime, composites)
    composite = last_prime + last_prime
    while composite <= max_range
     composites << composite
     composite += last_prime
    end
    composites
  end

  def find_next_prime(primes, composites)
    next_prime = nil
    prime_contender = primes.last + 1
    while next_prime.nil?
      if !composites.include? prime_contender
        next_prime = prime_contender
      end
      prime_contender += 1
    end
    next_prime
  end
end

