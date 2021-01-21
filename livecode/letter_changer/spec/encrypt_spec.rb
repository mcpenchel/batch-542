require_relative '../encrypt'

describe '#encrypt' do
  it 'encrypts correctly any sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"

    expect(actual).to eq(expected)

    actual = encrypt("the quick brown fox jumps over the lazy dog")
    expect(actual).to eq(expected)
  end

  it 'returns a string' do
    expect(encrypt("Whatever is the message").class).to eq(String) 
  end

  it 'returns an empty string if given an empty string' do
    actual = encrypt("")
    expected = ""

    expect(actual).to eq(expected)
  end
end