require 'takeaway'

describe Takeaway do
  # As a customer
  #   # So that I can check if I want to order something
  #   # I would like to see a list of dishes with prices
  subject(:takeaway) { described_class.new(menu: menu) }

  let(:menu) { double(:menu, list: list_menu) }
  let(:list_menu) {'sandwich $4.50'}

    it 'to see if want to make an order, see a list of dishes with prices' do
      expect(takeaway.list_menu).to eq(list_menu)
    end
end
