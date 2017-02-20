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
end
