require 'takeaway'

describe Takeaway do

  subject(:takeaway) { described_class.new(menu: menu) }

  let(:menu) { double(:menu, prints: printed_menu) }
  let(:printed_menu) {'sandwich $4.50'}

    it 'shows the menu' do
      expect(takeaway.print_menu).to eq(printed_menu)
    end
end
