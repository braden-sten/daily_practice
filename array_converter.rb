require 'rspec'

def array_converter *arrays
  arrays.flatten.map { |i| i.to_i }
  
  #arrays.flatten.map do |i|
    #i.to_i
  #end

  #arrays.flatten.map(&:to_i)
end

arr_1 = ['2', '4', '7']
arr_2 = ['10', '3', '1', '10']

p array_converter arr_1, arr_2


describe 'Combine arrays and convert strings to integers' do
  it 'can take in a variable number of arrays and return a single array' do
    arr_1 = ['2', '4', '7']
    arr_2 = ['10', '3', '1', '10']
    arr_3 = ['5', '8','6']
    expect(array_converter(arr_1, arr_2, arr_3).count).to eq(10)
    expect(array_converter(arr_1).first).to eq(2)
  end
end