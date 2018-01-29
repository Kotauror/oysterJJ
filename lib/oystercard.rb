class Oystercard

attr_reader :balance
MAXIMUM_BALANCE = 90 #constant for limit of monay on card

def initialize
  @balance = 0
end

def top_up(amount)
  fail "Maximum balance exceeded" if amount + balance > MAXIMUM_BALANCE
  @balance += amount
end

def deduct(amount)
  @balance -= amount
end

end
