require "#{File.dirname(__FILE__)}/../spec_helper"


describe 'FileParser, Unit' do

  let(:clazz) { TdKata::FileParser }
  let(:parser) { clazz.new }


  it 'can parse and account file' do
    expect(parser).to respond_to(:parse_account_file)
  end

  it 'needs an input file to parse' do
    expect(parser.method(:parse_account_file).arity).to eq(1)
  end

end
