class Bear

require_relative('./river')

  attr_accessor :name, :type

  def initialize (name, type)
    @name = name
    @type = type
    @stomach = []
  #  @roar = roar
  end

def count_fish_in_stomach()
  return @stomach.size()
end

#This method takes a fish from the river and adds to stomach
  def take_a_fish(river)
    @stomach << stomach
  end

  # def bear_roars()
  #   roar = "ROAR"
  # end

#p @stomach
end
