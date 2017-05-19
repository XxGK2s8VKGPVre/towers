require_relative 'minion'

def combat(minion1, minion2)
  minion1.hp = minion1.hp - minion2.attack
  minion2.hp = minion2.hp - minion1.attack
  minion1 = nil unless minion1.hp > 0
  minion2 = nil unless minion2.hp > 0
  return minion1, minion2
end
