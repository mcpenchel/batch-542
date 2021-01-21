def acronymizer(sentence)
  # Extra: one line solution below
  # sentence.split.map { |word| word[0].upcase }.join

  # 1) Split the sentence into words (so, from str to array of strs)
  words = sentence.split
  # sentence => "not safe for work"
  # word => ["not", "safe", "for", "work"]

  # 2) We're gonna iterate over the array using .map do |word|
  characters = words.map do |word|
    # 3) We want to get the first letter of the word 
    word[0].upcase
    # In the first iteration,
    # word => "not"
    # word[0] => "n"
    # word[0].upcase => "N"
  end

  characters.join
end

describe '#acronymizer' do
  it 'returns the correct acronym of a downcased sentence' do
    sentence = "not safe for work"
    actual = acronymizer(sentence)
    expected = "NSFW"

    expect(actual).to eq(expected)
  end

  it 'returns the correct acronym of a upcased sentence' do
    sentence = "NOT SAFE FOR WORK"
    actual = acronymizer(sentence)
    expected = "NSFW"

    expect(actual).to eq(expected)
  end

  it 'returns an empty string when given an empty string as an argument' do
    actual = acronymizer("")
    expected = ""

    expect(actual).to eq(expected)
  end
end