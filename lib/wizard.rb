require 'pry'

class Wizard
  attr_reader :name
  attr_accessor :bearded

  def initialize(name, bearded=Hash.new(true))
    @name = name
    @bearded = bearded
    @spell_counter = 0
  end

  def bearded?
    if @bearded == {bearded: false}
      false
    else
      true
    end
  end

  def incantation(root_power)
    "sudo #{root_power}"
  end

  def rested?
    if @spell_counter >= 3
      false
    else
      true
    end
  end

  def cast
    @spell_counter += 1
    "MAGIC MISSILE!"
  end

end


wizard = Wizard.new("Valerie", bearded: false)
wizard.bearded?
