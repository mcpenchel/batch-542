require_relative '../meerkat'

describe Meerkat do
  describe '#initialize' do
    it "initializes a new instance of Meerkat" do
      timon = Meerkat.new("Timon")
      expect(timon).to be_a(Meerkat)
    end
  end

  describe '#talk' do
    it "returns the correct 'talking' msg" do
      timon = Meerkat.new("Timon")
      expect(timon.talk).to eq("Timon barks")
    end
  end

  describe '#eat' do
    it "returns the correct eating msg for the Meerkat" do
      timon = Meerkat.new("Timon")
      expect(timon.eat("fruit")).to eq("Timon eats a fruit")
    end
  end
end