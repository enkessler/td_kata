module TdKata

  class NumberParser

    def parse_numbers(text)
      puts "provided text:"
      puts text.inspect


      lines = text.split("\n")
      number_strings = ['', '', '', '', '', '', '', '', '']

      3.times do |row|
        9.times do |number_index|
          3.times do |segment|
            number_strings[number_index] << lines[row][segment + (number_index * 3)]
          end
        end
      end
      puts "number strings:"
      puts number_strings.inspect

      number_strings.collect { |string| parse_number(string) }.join.to_i
    end


    private


    def parse_number(number_string)
      case number_string
        when '     |  |'
          1
        when ''
        when ''
        when ''
        when ''
        when ''
        when ''
        when ''
        when ''
        else
          raise(ArgumentError, "Uknown number string: #{number_string.inspect}")
      end
    end

  end
end
