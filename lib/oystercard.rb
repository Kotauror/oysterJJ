class Oystercard

  attr_reader :balance
  attr_reader :card_status
  attr_reader :entry_station

  MAXIMUM_BALANCE = 90 #constant for limit of money on card
  MINIMUM_BALANCE = 1

  def initialize
    @balance = 0
    @card_status = :not_in_journey
    @entry_station = nil
  end

  def top_up(amount)
    fail "Maximum balance exceeded" if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def touch_in(name_of_station)
    fail "Not enough credit in your card" if @balance < MINIMUM_BALANCE
    @card_status = :in_journey
    @entry_station = name_of_station
  end

  def touch_out
    deduct(MINIMUM_BALANCE)
    @card_status = :not_in_journey
    @entry_station = nil
  end

  def in_journey?
    !!entry_station #if there is an entry station != nil, it returns true, otherwise false  
  end

  private

  def deduct(amount)
    @balance -= amount
  end

end
