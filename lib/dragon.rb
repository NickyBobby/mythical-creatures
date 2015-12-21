

class Dragon
  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @hunger_count = 0
  end

  def hungry?
    if @hunger_count >= 3
      false
    else
      true
    end
  end

  def eat
    @hunger_count += 1
  end

end
