require 'rspec'

class Hash
  def param_converter
    self.map { |i| i * "=" } * "&"
  end
end

describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "basketball", :team => "jazz" }
    expect(hash.param_converter).to eq('topic=basketball&team=jazz')
  end
end

hash = { :topic => "basketball", :team => "jazz" }
p hash.param_converter