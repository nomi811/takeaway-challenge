require 'takeaway'

describe Takeaway do

  subject(:takeaway) { described_class.new(menu: menu) }

  let(:menu) { double(:menu, prints: printed_menu) }
  let(:printed_menu) { 'pasta $5.00' }

  it 'checks that it can show a menu' do
    expect(takeaway.print_menu).to eq(printed_menu)
  end

end
