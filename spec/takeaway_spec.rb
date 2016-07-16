require 'takeaway'

describe Takeaway do

  subject(:takeaway) { described_class.new(menu: menu, order: order) }

  let(:menu) { double(:menu, prints: printed_menu) }
  let(:printed_menu) { 'pasta $5.00' }
  let(:order) { instance_double('Order', total: 10.00) }
  let(:dishes) { {pasta: 2, shrimp: 2} }

  before do
    allow(order).to receive(:add)
  end
  it 'checks that it can show a menu' do
    expect(takeaway.print_menu).to eq(printed_menu)
  end

  it 'checks that it can take an order' do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)
  end

  it 'knoww the order total' do
    total = takeaway.place_order(dishes)
    expect(total).to eq(10.00)
  end

end
