require "test_helper"
require 'switch'
require 'circuit'

class CircuitTestModule < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Circuit::VERSION
  end

end

class TwoWayCircuitTest < Minitest::Test
  def setup
    @switch_a = Switch::SimpleSwitch.new
    @switch_b = Switch::SimpleSwitch.new
    @circuit = Circuit::TwoWayCircuit.new(@switch_a, @switch_b)
  end

  def test_whenBothOpened_thenCircuitIsOpened
    @switch_a.toggle
    @switch_b.toggle
    assert @circuit.is_opened?, "As both switches are opened, the circuit should be opened."
  end

  def test_whenBothClosed_thenCircuitIsOpened
    assert @circuit.is_opened?, "As both switches are closed, the circuit should be opened."
  end

  def test_whenStatesAreDifferent_thenCircuitIsClosed
    @switch_a.toggle
    assert !@circuit.is_opened?, "As the switches are in different states, the circuit should be closed."
  end

end
