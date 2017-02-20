module TdKata

  class NumberParser

    def parse_numbers(text)
      lines = text.split("\n")
      number_strings = ['', '', '', '', '', '', '', '', '']

      # todo - Refactor me: replace magic numbers with meaningful variables
      3.times do |row|
        9.times do |number_index|
          3.times do |segment|
            number_strings[number_index] << lines[row][segment + (number_index * 3)]
          end
        end
      end

      number_strings.collect { |string| parse_number(string) }.join.to_i
    end


    private


    def parse_number(number_string)
      case number_string
        when '     |  |'
          1
        when ' _  _||_ '
          2
        when ' _  _| _|'
          3
        when '   |_|  |'
          4
        when ' _ |_  _|'
          5
        when ' _ |_ |_|'
          6
        when ' _   |  |'
          7
        when ' _ |_||_|'
          8
        when ' _ |_| _|'
          9
        else
          raise(ArgumentError, "Unknown number string: #{number_string.inspect}")
      end
    end

  end
end
