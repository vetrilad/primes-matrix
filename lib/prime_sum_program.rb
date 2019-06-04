# frozen_string_literal: true

require_relative './prime_number'
require_relative './prime_table_builder'
require_relative './program_presenter'

module Exercise
  class PrimeSumProgram
    include ProgramPresenter

    WELCOME_MESSAGE = 'This program takes a single number n from the user ' \
        'and in response displays n*n table, such that the content of cell ' \
        '(a,b) is a sum of a-th and b-th prime number'
    ERROR_MESSAGE = 'Square size should be an integer equal or greater then 2'

    def run
      format_output(WELCOME_MESSAGE)

      loop do
        format_output('Please give the size of your square table eg. 3')
        size = STDIN.gets.chomp.to_i

        begin
          format_output(generate_prime_sum_table(size))
        rescue ArgumentError => e
          puts e
        end
      end
    end

    private

    def generate_prime_sum_table(size)
      validate(size)

      primes = PrimeNumber.find_primes(size, 2).freeze

      PrimeTableBuilder.new.build(size) { |i, j| primes[i] + primes[j] }
    end

    def validate(args)
      raise ArgumentError, ERROR_MESSAGE if args < 2
    end
  end
end
