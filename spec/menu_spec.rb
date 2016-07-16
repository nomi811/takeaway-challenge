require 'menu'

describe Menu do
  subject(:menu) { described_class.new(dishes) }
  let(:dishes) do
    {
      sandwich: 2.50,
      soup: 2.00
    }
  end
  it 'has a list of dishes with prices' do
    expect(menu.dishes).to eq(dishes)
  end

  it 'prints a list of dishes with prices' do
    printed_menu = 'Sandwich $2.50, Soup $2.00'
    expect(menu.prints).to eq(printed_menu)
  end

  it 'tells if a dish is on the menu' do
    expect(menu.has_dish?(:sandwich)).to be true
  end

  it 'tells if a dish is not on the menu' do
    expect(menu.has_dish?(:beef)).to be false
  end

  it 'calculates a price' do
    expect(menu.price(:sandwich)).to eq(dishes[:sandwich])
  end
end
