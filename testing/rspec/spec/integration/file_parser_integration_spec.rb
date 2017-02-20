require "#{File.dirname(__FILE__)}/../spec_helper"


describe 'FileParser, Integration' do

  let(:clazz) { TdKata::FileParser }
  let(:parser) { clazz.new }


  before(:all) do
    @input_file = Tempfile.new('foo')

    text = ['    _  _     _  _  _  _  _ ',
            '  | _| _||_||_ |_   ||_||_|',
            '  ||_  _|  | _||_|  ||_| _|',
            '',
            ' _  _  _  _  _     _  _    ',
            '|_||_|  ||_ |_ |_| _| _|  |',
            ' _||_|  ||_| _|  | _||_   |',
            ''].join("\n")

    @input_file.write(text)
    @input_file.close
  end


  it 'returns a collection' do
    expect(parser.parse_account_file(@input_file.path)).to be_a(Array)
  end


end
