module TdKata

  class FileParser

    def initialize
      @number_parser = TdKata::NumberParser.new
    end

    def parse_account_file(file_path)
      file_text = File.read(file_path)
      account_entries = parse_entries(file_text)

      Array.new.tap do |parsed_account_numbers|
        account_entries.each do |entry|
          parsed_account_numbers << @number_parser.parse_numbers(entry)
        end
      end
    end


    private


    def parse_entries(text)
      lines = text.split("\n")
      Array.new.tap do |parsed_entries|
        entry_string = ''

        lines.count.times do |line_number|
          if (((line_number + 1) % 4) == 0)
            parsed_entries << entry_string.chomp
            entry_string = ''
          else
            entry_string += lines[line_number] + "\n"
          end
        end
      end
    end

  end
end
