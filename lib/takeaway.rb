require 'menu'

class Takeaway

  def initialize(menu:)
    @menu = menu
  end

  def print_menu
    menu.prints
  end

  private

  attr_reader :menu

end
