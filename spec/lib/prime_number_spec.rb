# frozen_string_literal: true

RSpec.describe Exercise::PrimeNumber do
  it 'gets the first number n of primes' do
    expect(described_class.find_primes(4)).to eq([1, 2, 3, 5])
  end

  it 'confirms the number is prime' do
    expect(described_class.prime?(5)).to eq(true)
  end

  it 'negates the non prime number' do
    expect(described_class.prime?(9)).to eq(false)
  end
end
