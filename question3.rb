# Assumptions:

def changePossibilities(amount, denoms)
  combos = Array.new(amount+1, 0)
  combos[0] = 1

  denoms.each do |num1|
    (num1..amount).each do |num2|
      combos[num2] += combos[num2-num1]
    end
  end

  combos.last
end
