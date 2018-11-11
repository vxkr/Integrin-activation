mol new D:/College/Research/Mofrad/ Lab/Integrin/Both/both.psf waitfor -1
mol addfile D:/College/Research/Mofrad/ Lab/Integrin/Both/both500.dcd waitfor -1

set atom1 [atomselect 0 "resid 967 and name CA"]
set atom2 [atomselect 0 "resid 989 and name CA"]
set atom3 [atomselect 0 "resid 696 and name CA"]
set atom4 [atomselect 0 "resid 736 and name CA"]

set data_angle1 "D:/College/Research/Mofrad/ Lab/Integrin/Both/both_ab_angle_500.txt"

set nf [molinfo top get numframes]


set outfile1 [open $data_angle1 w]

for {set i 0} {$i < $nf} {incr i} {
    puts "frame $i of $nf"
    $atom1 frame $i
    $atom2 frame $i
	$atom3 frame $i
	$atom4 frame $i
    set com1 [measure center $atom1]
    set com2 [measure center $atom2]
	set com3 [measure center $atom3]
	set com4 [measure center $atom4]
    set vec1 [vecsub $com1 $com2]
	set vec2 [vecsub $com3 $com4]
	set dis1 [veclength $vec1]
	set dis2 [expr 1 / $dis1]
	set dis3 [veclength $vec2]
	set dis4 [expr 1 / $dis3]
	set vec3 [vecscale $vec1 $dis2]
	set vec4 [vecscale $vec2 $dis4]
	set angle1 [expr acos([vecdot $vec3 $vec4 ])]
    set simdata($i.r) $angle1
    puts $outfile1 "$i   $simdata($i.r)"
	
}
close $outfile1

set atom1 [atomselect 0 "resid 695 and name CA"]
set atom2 [atomselect 0 "resid 720 and name CA"]
set atom3 [atomselect 0 "resid 722 and name CA"]
set atom4 [atomselect 0 "resid 736 and name CA"]

set data_angle2 "D:/College/Research/Mofrad/ Lab/Integrin/Both/both_bend_angle_500.txt"

set nf [molinfo top get numframes]


set outfile2 [open $data_angle2 w]

for {set i 0} {$i < $nf} {incr i} {
    puts "frame $i of $nf"
    $atom1 frame $i
    $atom2 frame $i
	$atom3 frame $i
	$atom4 frame $i
    set com1 [measure center $atom1]
    set com2 [measure center $atom2]
	set com3 [measure center $atom3]
	set com4 [measure center $atom4]
    set vec1 [vecsub $com1 $com2]
	set vec2 [vecsub $com3 $com4]
	set dis1 [veclength $vec1]
	set dis2 [expr 1 / $dis1]
	set dis3 [veclength $vec2]
	set dis4 [expr 1 / $dis3]
	set vec3 [vecscale $vec1 $dis2]
	set vec4 [vecscale $vec2 $dis4]
	set angle1 [expr acos([vecdot $vec3 $vec4 ])]
    set simdata($i.r) $angle1
    puts $outfile2 "$i   $simdata($i.r)"
	
}

close $outfile2
mol delete top