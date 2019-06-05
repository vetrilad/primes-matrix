# frozen_string_literal: true

module Exercise
  module PrimeNumber
    def self.prime?(number)
      return false if number.zero? || number == 1

      (2...number).each do |factor|
        return false if (number % factor).zero?
      end
      true
    end

    def self.find_primes(size)
      primes = []
      i = 1
      while primes.length < size
        primes << i if prime?(i)
        i += 1
      end
      primes
    end
  end
end
