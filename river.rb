class River

  attr_accessor :name, :num_fish

  def initialize (name, num_fish)
    @name = name
    @num_fish = num_fish
  end

  #Method for river losing fish
  def river_loses_fish()
    @num_fish -= 1
  end


end
