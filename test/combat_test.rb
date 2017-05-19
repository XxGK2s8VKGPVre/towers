require 'test/unit'
require_relative '../src/combat.rb'

class CombatTest < Test::Unit::TestCase
  def test_combat
    m1 = Minion.new(5,3)
    m2 = Minion.new(1,1)
    m1, m2 = combat(m1, m2)
    assert_equal 5, m1.attack
    assert_equal 2, m1.hp
    assert_nil m2
  end
end
