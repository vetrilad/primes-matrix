# frozen_string_literal: true

RSpec.describe Exercise::PrimeSumProgram do
  it 'create nested array where cell(a,b) is a sum of a-th and b-th prime number' do
    table = [[4, 5, 7], [5, 6, 8], [7, 8, 10]]
    expect(described_class.new.send(:generate_prime_sum_table, 3)).to eq(table)
  end

  it 'raises an error when input is invalid' do
    expect { described_class.new.send(:generate_prime_sum_table, 1) }.to raise_error(ArgumentError)
  end
end
