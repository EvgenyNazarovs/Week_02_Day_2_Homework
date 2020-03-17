class River

  attr_reader :name
  attr_accessor :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_count
    @fish.size
  end

  def lose_fish(fish)
    @fish.delete(fish)
  end



end
