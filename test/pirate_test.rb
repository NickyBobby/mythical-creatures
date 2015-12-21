gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pirate'

class PirateTest < Minitest::Test
  def test_has_name
    pirate = Pirate.new("Jack")
    assert_equal "Jack", pirate.name
  end

  def test_can_have_different_name
    pirate = Pirate.new("Blackbeard")
    assert_equal "Blackbeard", pirate.name
  end

  def test_is_a_scallywag_by_default
    pirate = Pirate.new("Jack")
    assert_equal 'Scallywag', pirate.job
  end

  def test_is_not_always_a_scallywag
    pirate = Pirate.new("Jack", "Cook")
    assert_equal "Cook", pirate.job
  end

  def test_isnt_cursed_by_default
    pirate = Pirate.new("Jack")
    refute pirate.cursed?
  end

  def test_becomes_cursed_after_enough_heinous_acts
    pirate = Pirate.new("Jack")
    refute pirate.cursed?
    pirate.commit_heinous_act
    refute pirate.cursed?
    pirate.commit_heinous_act
    refute pirate.cursed?
    pirate.commit_heinous_act
    assert pirate.cursed?
  end

  def test_a_pirate_can_rob_ships
    pirate = Pirate.new("Jack")
    assert pirate.rob_ship
  end

  def test_a_pirate_has_booty
    pirate = Pirate.new("Captain Hook")
    assert_equal 0, pirate.booty
  end

  def test_a_pirate_gets_100_booty_for_robbing_ship
    pirate = Pirate.new("Random Somalian")
    pirate.rob_ship
    assert_equal 100, pirate.booty
  end

end
