require "#{File.dirname(__FILE__)}/../spec_helper"


describe 'NumberParser, Unit' do

  let(:clazz) { TdKata::NumberParser }
  let(:parser) { clazz.new }


  it 'can parse a number' do
    expect(parser).to respond_to(:parse_numbers)
  end

  it 'needs text to parse' do
    expect(parser.method(:parse_numbers).arity).to eq(1)
  end

  it 'can parse 1s' do
    text = ['                           ',
            '  |  |  |  |  |  |  |  |  |',
            '  |  |  |  |  |  |  |  |  |'].join("\n")

    expect(parser.parse_numbers(text)).to eq(111111111)
  end

  it 'can parse 2s' do
    text = [' _  _  _  _  _  _  _  _  _ ',
            ' _| _| _| _| _| _| _| _| _|',
            '|_ |_ |_ |_ |_ |_ |_ |_ |_ '].join("\n")

    expect(parser.parse_numbers(text)).to eq(222222222)
  end

  it 'can parse 3s' do
    text = [' _  _  _  _  _  _  _  _  _ ',
            ' _| _| _| _| _| _| _| _| _|',
            ' _| _| _| _| _| _| _| _| _|'].join("\n")

    expect(parser.parse_numbers(text)).to eq(333333333)
  end

  it 'can parse 4s' do
    text = ['                           ',
            '|_||_||_||_||_||_||_||_||_|',
            '  |  |  |  |  |  |  |  |  |'].join("\n")

    expect(parser.parse_numbers(text)).to eq(444444444)
  end

  it 'can parse 5s' do
    text = [' _  _  _  _  _  _  _  _  _ ',
            '|_ |_ |_ |_ |_ |_ |_ |_ |_ ',
            ' _| _| _| _| _| _| _| _| _|'].join("\n")

    expect(parser.parse_numbers(text)).to eq(555555555)
  end

  it 'can parse 6s' do
    text = [' _  _  _  _  _  _  _  _  _ ',
            '|_ |_ |_ |_ |_ |_ |_ |_ |_ ',
            '|_||_||_||_||_||_||_||_||_|'].join("\n")

    expect(parser.parse_numbers(text)).to eq(666666666)
  end

  it 'can parse 7s' do
    text = [' _  _  _  _  _  _  _  _  _ ',
            '  |  |  |  |  |  |  |  |  |',
            '  |  |  |  |  |  |  |  |  |'].join("\n")

    expect(parser.parse_numbers(text)).to eq(777777777)
  end

  it 'can parse 8s' do
    text = [' _  _  _  _  _  _  _  _  _ ',
            '|_||_||_||_||_||_||_||_||_|',
            '|_||_||_||_||_||_||_||_||_|'].join("\n")

    expect(parser.parse_numbers(text)).to eq(888888888)
  end

  it 'can parse 9s' do
    text = [' _  _  _  _  _  _  _  _  _ ',
            '|_||_||_||_||_||_||_||_||_|',
            ' _| _| _| _| _| _| _| _| _|'].join("\n")

    expect(parser.parse_numbers(text)).to eq(999999999)
  end

  it 'can parse mixed numbers' do
    text = ['    _  _     _  _  _  _  _ ',
            '  | _| _||_||_ |_   ||_||_|',
            '  ||_  _|  | _||_|  ||_| _|'].join("\n")

    expect(parser.parse_numbers(text)).to eq(123456789)
  end

end
