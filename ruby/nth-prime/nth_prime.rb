=begin
Write your code for the 'Nth Prime' exercise in this file. Make the tests in
`nth_prime_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nth-prime` directory.
=end

class Prime
  def self.nth(n)
    raise ArgumentError, "n must be a positive integer" if n < 1

    primes = []
    candidate = 2
    while primes.length < n
      is_prime = true
      primes.each do |prime|
        if candidate % prime == 0
          is_prime = false
          break
        end
      end
      primes << candidate if is_prime
      candidate += 1
    end
    primes.last
  end
end

