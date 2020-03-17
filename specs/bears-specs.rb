require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../Bears')
require_relative('../Fish')
require_relative('../River')

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Hubert", "godzilla")
    @fish1 = Fish.new("Charlie")
    @fish2 = Fish.new("Marlon")
    @fish3 = Fish.new("Antoine")
    @fish4 = Fish.new("Leo")
    @fish5 = Fish.new("Dubravka")
    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5]
    @amazon = River.new("Amazon", @fish)
  end

  def test_roar
    assert_equal("Roar!", @bear.roar)
  end

  def test_catch_fish_from_river
    @bear.catch_fish_from_river(@amazon)
    assert_equal(4, @amazon.fish_count)
    assert_equal(1, @bear.food_count)
  end



end
