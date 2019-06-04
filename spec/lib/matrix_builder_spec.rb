# frozen_string_literal: true

RSpec.describe MatrixBuilder do
  it 'populates a square of size n depending on a formula given in the block' do
    matrix = described_class.new(3).populate { |i, j| i + j }
    expect(matrix).to eq([[0, 1, 2], [1, 2, 3], [2, 3, 4]])
  end
end
