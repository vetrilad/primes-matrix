# frozen_string_literal: true

RSpec.describe Exercise::PrimeTableBuilder do
  it 'populates a square of size n depending on a formula given in the block' do
    table = described_class.new.build(3) { |i, j| i + j }
    expect(table).to eq([[0, 1, 2], [1, 2, 3], [2, 3, 4]])
  end
end
