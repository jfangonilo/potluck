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
    alpha_sort = @dishes.sort_by do |dish|
      dish.name
    end

    alpha_sort.group_by do |dish|
      dish.category
    end
  end

  def ratio(category)
    total_in_category = menu[category].count.to_f
    total_dishes = @dishes.count.to_f
    ((total_in_category / total_dishes) * 100).floor(1)
  end
end
