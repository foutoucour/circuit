require "test_helper"
require 'switch'

class SwitchTest < Minitest::Test

  def setup
    @switch = Switch::SimpleSwitch.new
  end

  def test_byDefaultSwitchIsClosed
    assert @switch.is_closed?, "By Default a switch should be closed."
  end

  def test_whenSwitchIsClosed_thenToggleOpensIt
    @switch.toggle
    assert@switch.is_opened?, "After a toggle, a closed switch should be opened."
    @switch.toggle
    assert @switch.is_closed?, "After a toggle, an opened switch should be closed."
  end
end