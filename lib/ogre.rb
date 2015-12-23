

class Ogre
  attr_reader :name, :home
  attr_accessor :encounter_counter

  def initialize(name, home='Swamp')
    @name = name
    @home = home
    @encounter_counter = 0
  end

  def encounter
    @encounter_counter += 1
  end

end

class Human
  attr_reader :name

  def intialize
    @name = 'Jane'
  end

  def notices_ogre?
    if encounter % 3 ==0
      true
    else
      false
    end
  end

end
