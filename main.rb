require './building'
require './unit'
require './tenant'
require 'pry'

building = Building.new("Waterfront Tower", "345 Embarcadero")

def menu message
  puts `clear`
  puts "*** LordLand, an app for Landlords v1.0 ***\n\n"

  puts "#{message}\n\n" unless message.empty?

  puts '1 : Add unit'
  puts '2 : Add tenant'
  puts '3 : Show all unrented units'
  puts '4 : Show tenant contacts'
  puts '5 : Show total rented sqft'
  puts '6 : Cha-ching! Show my annual income'
  puts "q : Quit\n\n"
  print '--> '
  gets.chomp
end

message = ""
choice = menu message
while choice != 'q'
  message = ""
  case choice
  when "1"
    message += 'option 1'
    puts "- Please enter unit info -"
    unit_info = []
    puts "Building : "
    unit_info << gets.chomp
     binding.pry
    puts "Unit Number : "
    unit_info << gets.to_i
    puts "Square Footage : "
   unit_info[1] = Unit.new(unit_info)

    # 1) ask user for unit info
    # 2) use info to create instance of unit.
    # 3) display message that unit was added
  when "2"
    message += 'option 2'
    # 1) ask user for tenant info
    # 2) create new tenant
    # 3) display list of available units (unit number)
    # 4) Ask user for unit number (the one the tenant will be assigned to)
    # 5) Get a reference to the unit from building.units
    # 6) Assign previously created tenant to the requested unit
    # 7) Display message that tenant X was added to unit Y
  when "3"
    message += 'option 3'
    # Display list of all available units
  when "4"
    message += 'option 4'
    # Display a list of all tenants contact info
  when "5"
    message += 'option 5'
    # Show total sqft rented
  when "6"
    message += 'option 6'
    # Show annual income of building
  else
      message += "I don't understand ..."
  end
  choice = menu message
end
