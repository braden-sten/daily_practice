require 'rspec'

def palindrome? word
	word.downcase == word.downcase.reverse
end

describe 'Check if a word is a palindrome' do
  it 'returns true if word is a palindrome, false if not' do
    expect(palindrome?('tacocat')).to be (true)
    expect(palindrome?('Tacocat')).to be (true)
    expect(palindrome?('basketball')).to be (false)
  end
end

puts palindrome? 'TaCoCAT' #true
puts palindrome? 'isthisapalindrome' #false