class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price.tr('$', '').to_i
    @address = address
    @rooms = []
    @above_market_average = false
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if price > 500000
      true
    else
      @above_market_average
    end
  end

  def rooms_from_category(category)
    rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    sum = 0
    @rooms.each do |room|
      sum += room.area
    end
    sum
  end

  def house_details
    details = Hash.new
    details["price"] = @price
    details["address"] = @address
    details
  end

end
