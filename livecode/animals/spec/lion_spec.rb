require_relative '../lion'

describe Lion do
  describe '#initialize' do
    it "initializes a new instance of Lion" do
      simba = Lion.new("Simba")
      expect(simba).to be_a(Lion)
    end
  end

  describe '#talk' do
    it "returns the correct 'talking' msg" do
      scar = Lion.new("Scar")
      expect(scar.talk).to eq("Scar roars")
    end
  end

  describe '#eat' do
    it "returns the correct eating msg for the Lion" do
      scar = Lion.new("Scar")
      expect(scar.eat("gazelle")).to eq("Scar eats a gazelle. Law of the Jungle!")
    end
  end
end