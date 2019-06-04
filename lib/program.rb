# frozen_string_literal: true

require_relative './prime_number'
require_relative './matrix_builder'

module ProgramPresenter
  def format_output(output)
    if output.class == Array
      field_size = output.flatten.collect { |i| i.to_s.size }.max
      output.each do |row|
        puts (row.collect { |i| ' ' * (field_size - i.to_s.size) + i.to_s }).join('  ')
      end
    end
    puts output if output.class == String
  end
end

class PrimeSquareProgram
  include ProgramPresenter

  def run
    format_output('This program takes a single number n from the user and' \
        'in response displays n*n table, such that the content of cell' \
        '(a,b) is a sum of a-th and b-th prime number')

    loop do
      format_output('Please give the size of your square eg. 3')
      square_size = STDIN.gets.chomp.to_i

      begin
        validate(square_size)

        primes = PrimeNumber.find_primes(square_size, 2).freeze

        matrix_builder = MatrixBuilder.new(square_size)
        matrix_builder.populate { |i, j| primes[i] + primes[j] }

        format_output(matrix_builder.matrix)
      rescue RuntimeError => e
        puts e
      end
    end
  end

  private

  def validate(args)
    raise 'Square size should be an integer equal or greater then 2' if args < 2
  end
end
