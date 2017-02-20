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
          parsed_account_numbers << @number_parser.parse_number(entry)
        end
      end
    end


    private


    def parse_entries(text)
      Array.new.tap do |parsed_entries|
        # todo fix this split so that it splits into groups of 3, not every line
        parsed_entries << text.split("\n")
      end
    end

  end
end
