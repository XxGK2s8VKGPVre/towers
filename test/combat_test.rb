require 'test/unit'
require_relative '../src/combat.rb'

class CombatTest < Test::Unit::TestCase
  def test_combat_minion_one_kills_minion_two_takes_damage
    m1 = Minion.new(5,3)
    m2 = Minion.new(1,1)
    m1, m2 = combat(m1, m2)
    assert_equal 5, m1.attack
    assert_equal 2, m1.hp
    assert_nil m2
  end

  def test_combat_minion_two_kills_minion_one_no_damage_taken
    m1 = Minion.new(0,2)
    m2 = Minion.new(6,2)
    m1, m2 = combat(m1, m2)
    assert_equal 6, m2.attack
    assert_equal 2, m2.hp
    assert_nil m1
  end

  def test_combat_minions_kill_each_other
    m1 = Minion.new(3,5)
    m2 = Minion.new(6,2)
    m1, m2 = combat(m1, m2)
    assert_nil m1
    assert_nil m2
  end
end
