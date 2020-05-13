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
    rooms.each do |room|
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

  def price_per_square_foot
    (price.to_f / area).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by {|room| room.area}.reverse
  end

  def rooms_by_category
    type_of_room = {}
    @rooms.each do |room|
      room.category 
    end
  end

end
