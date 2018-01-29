require 'oystercard'

describe Oystercard do

subject(:oystercard) { described_class.new }

  it 'has initial balance of zero' do
    expect(oystercard.balance).to eq (0)
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }
    it "tops up the oyster card" do
      expect{ oystercard.top_up 1 }.to change{ oystercard.balance }.by 1
    end
    it "raises error when maximum balance is exceeded" do
      oystercard.top_up(Oystercard::MAXIMUM_BALANCE)
      expect{ oystercard.top_up 1 }.to raise_error "Maximum balance exceeded"
    end
  end

  describe "#deduct" do
    it { is_expected.to respond_to(:deduct).with(1).argument}
    it "deducts an amount from the card" do
      expect{ oystercard.deduct 1}.to change{ oystercard.balance}.by -1
    end
  end

end
