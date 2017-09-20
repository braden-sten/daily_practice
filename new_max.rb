require 'rspec'
# require 'benchmark'

# p arr = Array.new(1000) { rand 1000}
# p arr.max       # built-in method

# arr = Array.new(100_000_000) { rand 1000}
# p arr.sort.last                                               poor performance

#                  user     system      total        real
# Each:        7.820000   1.000000   8.820000 (  9.426636)
# Sorted:     11.840000   3.740000  15.580000 ( 17.350114)      examples of time it took to sort using
# Max:         0.450000   0.770000   1.220000 (  1.335066)      custom new_max, sort, and built-in max methods

# def new_max array_of_elements
#   max_value = 0

# 	array_of_elements.each do |i|
# 		if i > max_value
# 		  max_value = i
# 	  end                                      
# 	end

# 	max_value
# end

# Benchmark.bm(10) do |x|
# 	x.report('Each: ') { new_max arr }
# 	x.report('Sorted: ') { arr.sort.last }
# 	x.report('Max: ') { arr.max }
# end

def new_max array_of_elements
  max_value = 0

	array_of_elements.each do |i|
		if i > max_value
		  max_value = i
	  end                                      
	end

	max_value
end

describe 'New max method' do
  it 'returns max value from an array efficiently' do
    test_array = [2, 4, 10, 3, 1]
    expect(new_max(test_array)).to eq(10)
  end
end