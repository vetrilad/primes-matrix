require_relative "./lib/prime_number"

n = 3
primes = PrimeNumber.find_primes(n).freeze

square = []
n.times do |i|
    row = []
    n.times { |j| row << primes[i] + primes[j] }
    square << row
    puts row.join(" ")
end
