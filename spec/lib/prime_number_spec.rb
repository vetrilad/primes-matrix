RSpec.describe PrimeNumber do
  it "gets the first number n of primes" do
    expect(described_class.find_primes(4)).to eq([1,2,3,5])
  end
end
