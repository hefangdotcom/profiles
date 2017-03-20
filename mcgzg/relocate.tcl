
#! /bin/env tclsh
# usage: tclsh relocate.tcl
#puts "Please input world name:"
#gets  stdin WorldName
puts "You are going to convert all r.a.b.mca to r.a+x.b+z.mca :"

puts "Please input new additional x region:" 
gets  stdin x0

puts "Please input new additional z region:"
gets  stdin z0

#puts [ expr { $x0 + $z0} ]
#after 1000 

set mcafiles [glob *.mca]

foreach fmca $mcafiles {
	set fmcalist [split $fmca .]
	set newx [expr {$x0+ [lindex $fmcalist 1]}]
	set newz [expr {$z0+ [lindex $fmcalist 2]}]
	set newfmcalist [lreplace $fmcalist 1 1 $newx ]
	set finfmcalist [lreplace $newfmcalist 2 2 $newz ]
	set newfmca [join $finfmcalist "."]
	puts "changing $fmca to $newfmca"   	

	file rename $fmca $newfmca
}
puts "Done"
exit 0


