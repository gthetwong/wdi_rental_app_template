class Unit
  #basic properties, feel free to add more
  attr_accessor :building, :number, :sqft, :rent, :tenant

  # initialize instance variables
  def initialize()
    #implement
  end

  #Returns true if unit is available, otherwise false. The unit
  # is available if it is not occupied by a tenant.
  def available?
    #implement
  end

end
