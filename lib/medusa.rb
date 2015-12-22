require 'pry'


class Medusa
  attr_reader :name
  attr_accessor :statues

  def initialize(name)
    @name = name
    @statues = []
    @victim_counter = 0
  end

  def respond_to?(stuff)
    true
  end

  def stare(person)
    @victim_counter += 1
    if statues.count == 3
      statues << person
      person.stoned = true
      statues.shift.stoned = false
    else
      statues << person
      person.stoned = true
    end
  end

  def is_alive?
    if @victim_counter >= 5
      false
    else
      true
    end
  end

end

class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

end
