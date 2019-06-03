module PrimeNumber
	def self.prime? number
		return true if [1,2].include? number
		return nil if number == 0
		(2...number).each do |factor|
			if(number % factor) == 0
				return false
			end
		end
		return true
	end

	def self.find_primes n
		primes = []
		i = 1
		while primes.length < n
			if self.prime? i
				primes << i
			end
			i = i + 1
		end
		return primes
	end
end
