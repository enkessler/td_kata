Given(/^the following input file:$/) do |text|
  @input_file = Tempfile.new('foo')

  @input_file.write(text)
  @input_file.close
end
