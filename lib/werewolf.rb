

class Werewolf
  attr_reader :name, :location
  attr_accessor :human, :werewolf

  def initialize(name, location="")
    @name = name
    @location = location
    @human = true
    @werewolf = false
    @hunger = false
  end

  def change!
    h_state = @human
    w_state = @werewolf
    @human = w_state
    @werewolf = h_state
    @hunger = true
  end

  def human?
    @human
  end

  def werewolf?
    @werewolf
  end

  def hungry?
    @hunger 
  end

end
