
#! /bin/env tclsh
# usage: tclsh relocate.tcl
#puts "Please input world name:"
#gets  stdin WorldName
puts "convert latitude/longtitude to Z/X in minecraf"

puts "Please input latitude (Positive South): i.e, 40N=-40 " 
gets  stdin z0

puts "Please input longtitude (Positive East): i.e, 74W=-74"
gets  stdin x0

set minecraft_z [expr {$z0*30000000/90}]
set minecraft_x [expr {$x0*30000000/180}]

puts "X in minecraft is $minecraft_x"
puts "Z in minecraft is $minecraft_z"


#after 1000 


puts "Done"
exit 0


