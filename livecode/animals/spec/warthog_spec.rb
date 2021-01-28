require_relative '../warthog'

describe Warthog do
  describe '#initialize' do
    it "initializes a new instance of Warthog" do
      puma = Warthog.new("Puma")
      expect(puma).to be_a(Warthog)
    end
  end

  describe '#talk' do
    it "returns the correct 'talking' msg" do
      puma = Warthog.new("Puma")
      expect(puma.talk).to eq("Puma grunts")
    end
  end

  describe '#eat' do
    it "returns the correct eating msg for the Warthog" do
      puma = Warthog.new("Puma")
      expect(puma.eat("lettuce")).to eq("Puma eats a lettuce")
    end
  end
end