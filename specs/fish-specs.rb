require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../River')
require_relative('../Fish')
require_relative('../River')

class FishTest < MiniTest::Test


end
