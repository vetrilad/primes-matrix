# frozen_string_literal: true

class MatrixBuilder
  attr_reader :matrix

  def initialize(size, matrix = [])
    @matrix_size = size
    @matrix = matrix
  end

  def populate
    @matrix_size.times do |i|
      @matrix_size.times do |j|
        next unless cell_empty?(i, j)

        insert_blank(i) if row_empty?(i)
        insert_blank(j) if row_empty?(j)
        @matrix[i][j] = @matrix[j][i] = yield(i, j)
      end
    end
    @matrix
  end

  private

  def cell_empty?(row, column)
    row_empty?(row) || @matrix[row][column].nil?
  end

  def row_empty?(row)
    @matrix[row].nil?
  end

  def insert_blank(row)
    @matrix[row] = []
  end
end
