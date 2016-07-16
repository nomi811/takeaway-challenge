require 'menu'

describe Menu do

  subject(:menu) { described_class.new(dishes) }

  let(:dishes) do
    {
      pasta: 5.00,
      shrimp: 5.00
    }
  end

  it 'has a list of dishes with prices' do
    expect(menu.dishes).to eq(dishes)
  end

  it 'prints a list of dishes with prices' do
    printed_menu = 'Pasta $5.00, Shrimp $5.00'
    expect(menu.prints).to eq(printed_menu)
  end

  it 'tells if a dish is on the menu' do
    expect(menu.has_dish?(:pasta)).to be true
  end

  it 'tells if a dish is not on the menu' do
    expect(menu.has_dish?(:chicken)).to be false
  end

  it 'calculates a price' do
    expect(menu.price(:pasta)).to eq(dishes[:pasta])
  end

end
