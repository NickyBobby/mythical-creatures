

class Vampire
  attr_reader :name, :pet
  attr_accessor :thirsty

  def initialize(name, pet="bat", thirsty=true)
    @name = name
    @pet = pet
    @thirsty = thirsty
  end

  def thirsty?
    if @thirsty == true
      true
    else
      false
    end
  end

  def drink
    @thirsty = false
  end

end
