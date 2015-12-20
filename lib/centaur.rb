

class Centaur
  attr_accessor :name, :breed, :lay_down

  def initialize(name, breed)
    @name = name
    @breed = breed
    @counter = 0
  end

  def shoot
    @counter += 1
    if @counter >= 3
      "NO!"
    else
    "Twang!!!"
    end
  end

  def run
    @counter += 1
    if @counter >=3
      "NO!"
    else
    "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @counter >= 3
      true
    else
      false
    end
  end

  def standing?
    true
  end

  def laying?
    true
  end

  def sleep
    if standing? == true
      "NO!"
    end
  end

  def respond_to?(command)
    true
  end

end
