class Oystercard

  attr_reader :balance
  attr_accessor :card_status

  MAXIMUM_BALANCE = 90 #constant for limit of monay on card

  def initialize
    @balance = 0
    @card_status = :not_in_journey
  end

  def top_up(amount)
    fail "Maximum balance exceeded" if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def touch_in
    @card_status = :in_journey
  end

  def touch_out
    @card_status = :not_in_journey
  end

  def in_journey?
     @card_status == :in_journey
  end

end
