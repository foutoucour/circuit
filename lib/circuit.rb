require "circuit/version"
require 'switch'
module Circuit
  class TwoWayCircuit

    # @param [Switch::SimpleSwitch] switch_a
    # @param [Switch::SimpleSwitch] switch_b
    def initialize(switch_a, switch_b)
      @switch_a = switch_a
      @switch_b = switch_b
    end

    # @return [Boolean]
    def is_opened?
      @switch_a.is_opened? == @switch_b.is_opened?
    end
  end
end
