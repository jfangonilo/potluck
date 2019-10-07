class Potluck
  attr_reader :date, :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      dish if dish.category == category
    end
  end

  def menu
    menu = @dishes.sort_by do |dish|
      dish.name
    end

    menu.group_by do |dish|
      dish.category
    end
  end

  def ratio(category)

  end
end
