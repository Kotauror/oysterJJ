require 'station'

describe Station do

  subject(:station) { described_class.new("Farrington", 1) }

  it 'knows its own name' do
    expect(station.name).to eq("Farrington")
  end

  it 'knows the stations zone' do
    expect(station.zone).to eq(1)
  end

end