require_relative '../animal'

describe Animal do
  describe '#initialize' do
    it 'creates an instance of Animal' do
      jabberjaw = Animal.new("Jabberjaw")
      expect(jabberjaw).to be_an(Animal)
    end
  end

  describe '#name' do
    it 'returns the content inside @name' do
      jabberjaw = Animal.new("Jabberjaw")
      expect(jabberjaw.name).to eq("Jabberjaw")
    end
  end

  describe '#eat' do
    it 'returns the correct sentence' do
      jabberjaw = Animal.new("Jabberjaw")
      expect(jabberjaw.eat("fish")).to eq("Jabberjaw eats a fish")
    end
  end
end