# frozen_string_literal: true

module Exercise
  class PrimeTableBuilder
    def initialize(table = [])
      @table = table
    end

    def build(row_count, column_count = row_count)
      Array.new(row_count) do |i|
        Array.new(column_count) do |j|
          next unless cell_empty?(i, j)

          insert_blank(i) if row_empty?(i)
          insert_blank(j) if row_empty?(j)
          @table[i][j] = @table[j][i] = yield(i, j)
        end
      end
      @table
    end

    private

    def cell_empty?(row, column)
      row_empty?(row) || @table[row][column].nil?
    end

    def row_empty?(row)
      @table[row].nil?
    end

    def insert_blank(row)
      @table[row] = []
    end
  end
end
