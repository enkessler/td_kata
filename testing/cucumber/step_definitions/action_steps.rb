When(/^the input file is parsed$/) do
  @parsed_account_numbers = TdKata::FileParser.new.parse_account_file(@input_file.path)
end
