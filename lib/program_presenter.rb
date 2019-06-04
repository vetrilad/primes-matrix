# frozen_string_literal: true

module Exercise
  module ProgramPresenter
    def format_output(output)
      if output.class == Array
        field_size = output.flatten.collect { |i| i.to_s.size }.max
        output.each do |row|
          puts (row.collect do |i|
            ' ' * (field_size - i.to_s.size) + i.to_s
          end).join('  ')
        end
      end
      puts output if output.class == String
    end
  end
end
