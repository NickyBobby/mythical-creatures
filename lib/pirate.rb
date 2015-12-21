

class Pirate
  attr_reader :name
  attr_accessor :job, :booty

  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @heinous_meter = 0
    @booty = 0
  end

  def cursed?
    if @heinous_meter >= 3
      true
    else
      false
    end
  end

  def commit_heinous_act
    @heinous_meter += 1
  end

  def rob_ship
    @booty += 100
  end

end
