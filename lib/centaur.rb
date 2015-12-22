

class Centaur
  attr_accessor :name, :breed, :lay_down

  def initialize(name, breed)
    @name = name
    @breed = breed
    @counter = 0
    @standing = true
    @laying = false
  end

  def shoot
    @counter += 1
    if @counter >= 3 || @laying == true
      "NO!"
    else
    "Twang!!!"
    end
  end

  def run
    @counter += 1
    if @counter >=3 || @laying == true
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
    @standing
  end

  def laying?
    @laying
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def sleep
    if standing? == true
      "NO!"
    elsif laying? == true
      @counter = 0
      "Yea, OK"
    end
  end

  def drink_potion
    if @counter < 2
      @counter = -2
    elsif standing? == true
      @counter = 0
    end
  end

  def sick?
    if @counter < 0
      "I'm sick!!"
    end
  end

end
