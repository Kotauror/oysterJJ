class Oystercard

  attr_reader :balance, :card_status, :entry_station, :journeys, :exit_station

  MAXIMUM_BALANCE = 90 #constant for limit of monay on card
  MINIMUM_BALANCE = 1

  def initialize
    @balance = 0
    @card_status = :not_in_journey
    @entry_station = nil
    @exit_station = nil
    @journeys = []
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

  def touch_out(name_of_station)
    @exit_station = name_of_station
    deduct(MINIMUM_BALANCE)
    @card_status = :not_in_journey
    add_journey
    @entry_station = nil
    @exit_station = nil
  end

  def add_journey
    @journeys.push(entry_station: @entry_station, exit_station: @exit_station)
  end

  def in_journey?
    !!entry_station #if there is an entry station != nil, it returns true, otherwise false
  end

  private

  def deduct(amount)
    @balance -= amount
  end

end
