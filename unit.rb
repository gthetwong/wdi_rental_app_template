class Unit
  #basic properties, feel free to add more
  attr_accessor :building, :number, :sqft, :rent, :tenant

  # initialize instance variables
  def initialize(number, sqft, rent)
    @building = "Waterfront Tower"
    @number = number
    @sqft= sqft
    @rent = rent
    @tenant = tenant
    puts "Unit added in database "
  end

  #Returns true if unit is available, otherwise false. The unit
  # is available if it is not occupied by a tenant.
  def available?
    if tenant == false && @units != @number
      return true
    else 
      return false
    end
  end

  def sqft
   puts @sqft
 end 

end
