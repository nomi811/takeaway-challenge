require 'takeaway'

describe Takeaway do

  subject(:takeaway) { described_class.new(menu: menu, order: order) }

  let(:menu) { double(:menu, prints: printed_menu) }
  let(:order) { instance_double("Order", total: 9.00) }
  let(:printed_menu) {'sandwich $4.50'}
  let(:dishes) { {sandwich: 2, soup: 2}}

    it 'shows the menu' do
      expect(takeaway.print_menu).to eq(printed_menu)
    end

    it 'can show an order' do
      expect(order).to receive(:add).twice
      takeaway.place_order(dishes)
    end

    it 'knows the order total' do
      allow(order).to receive(:add)
      total = takeaway.place_order(dishes)
      expect(total).to eq(9.00)
    end
end
