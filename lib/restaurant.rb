class Restaurant
  attr_reader :name, :opening_time, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_open)
    (@opening_time.to_i + hours_open).to_s + ":00"
  end

  def add_dish(dish)
    dishes << dish
  end

  def open_for_lunch?
    opening_time.to_i < 12
  end

  def menu_dish_names
    dish_upcase = []
    @dishes.each { |dish| dish_upcase << dish.upcase}
    return dish_upcase
  end

  # def announce_closing_time(time_open)
  #
  # end

# commented out as I have no idea! Hepl!

end
