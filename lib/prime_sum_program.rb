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
    INPUT_MESSAGE = 'Please give the size of your square table eg. 3. ' \
      'Type \'exit\' to Exit'
    ERROR_MESSAGE = 'Square size should be an integer equal or greater than 2'

    def run
      format_output(WELCOME_MESSAGE)

      loop do
        format_output(INPUT_MESSAGE)

        input = STDIN.gets.chomp
        break if input.downcase == 'exit'

        begin
          format_output(generate_prime_sum_table(input))
        rescue ArgumentError => e
          puts e
        end
      end
    end

    private

    def generate_prime_sum_table(input)
      size = validate(input.to_i)

      primes = PrimeNumber.find_primes(size).freeze

      PrimeTableBuilder.new.build(size) { |i, j| primes[i] + primes[j] }
    end

    def validate(args)
      raise ArgumentError, ERROR_MESSAGE if args < 2

      args
    end
  end
end
