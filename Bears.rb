class Bear

  attr_reader :name, :type
  attr_accessor :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def catch_random_fish(river)
    river.fish.sample
  end

  def catch_fish_from_river(river)
    caught_fish = river.fish.sample
    river.lose_fish(caught_fish)
    @stomach.push(caught_fish)
  end

  def food_count
    @stomach.size
  end

  def roar
    return "Roar!"
  end 

end
