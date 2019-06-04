# frozen_string_literal: true

module Exercise
  module PrimeNumber
    def self.prime?(number)
      return true if [1, 2].include? number
      return nil if number.zero?

      (2...number).each do |factor|
        return false if (number % factor).zero?
      end
      true
    end

    def self.find_primes(size, offset = 1)
      primes = []
      i = offset
      while primes.length < size
        primes << i if prime?(i)
        i += 1
      end
      primes
    end
  end
end
