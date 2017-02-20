Then(/^the following account numbers are found:$/) do |account_numbers|
  expected_account_numbers = account_numbers.raw.flatten.collect { |number| number.to_i }

  expect(@parsed_account_numbers).to eq(expected_account_numbers)
end
