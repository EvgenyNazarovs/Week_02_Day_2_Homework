require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../Fish')
require_relative('../River')

class RiverTest < MiniTest::Test

def setup
  @fish1 = Fish.new("Charlie")
  @fish2 = Fish.new("Marlon")
  @fish3 = Fish.new("Antoine")
  @fish4 = Fish.new("Leo")
  @fish5 = Fish.new("Dubravka")
  @fish = [@fish1, @fish2, @fish3, @fish4, @fish5]
  @amazon = River.new("Amazon", @fish)
end

def test_count_fish
  assert_equal(5, @amazon.fish_count)
end

def test_river_losing_fish
  @amazon.lose_fish(@fish4)
  assert_equal(4, @amazon.fish_count)
end

end
