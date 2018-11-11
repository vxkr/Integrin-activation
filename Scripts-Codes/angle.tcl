mol new D:/College/Research/Mofrad\ Lab/Integrin/Both/CA only/both_CA.pdb waitfor -1
mol addfile D:/College/Research/Mofrad\ Lab/Integrin/Both/CA only/both_CA.dcd waitfor -1

set atom1 [atomselect 0 "resid 967 and name CA"]
set atom2 [atomselect 0 "resid 989 and name CA"]
set atom3 [atomselect 0 "resid 696 and name CA"]
set atom4 [atomselect 0 "resid 736 and name CA"]

set data_angle "D:/College/Research/Mofrad\ Lab/Integrin/Kindlin/Kindlin_angle.txt"

set nf [molinfo top get numframes]


set outfile [open $data_angle w]

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
	set angle [expr acos([vecdot $vec3 $vec4])]
    set simdata($i.r) $angle
    puts $outfile "$i   $simdata($i.r)"
}

close $outfile

mol delete top

mol new D:/College/Research/Mofrad\ Lab/Integrin/Kindlin/CA only/kindlin_CA.pdb waitfor -1
mol addfile D:/College/Research/Mofrad\ Lab/Integrin/Kindlin/CA only/kindlin_CA.dcd waitfor -1

set atom1 [atomselect 0 "resid 967 and name CA"]
set atom2 [atomselect 0 "resid 989 and name CA"]
set atom3 [atomselect 0 "resid 696 and name CA"]
set atom4 [atomselect 0 "resid 736 and name CA"]

set data_angle "D:/College/Research/Mofrad\ Lab/Integrin/Talin/Talin_angle.txt"

set nf [molinfo top get numframes]


set outfile [open $data_angle w]

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
	set angle [expr acos([vecdot $vec3 $vec4])]
    set simdata($i.r) $angle
    puts $outfile "$i   $simdata($i.r)"
}

close $outfile

mol delete top

mol new D:/College/Research/Mofrad\ Lab/Integrin/Talin/CA only/talin_CA.pdb waitfor -1
mol addfile D:/College/Research/Mofrad\ Lab/Integrin/Talin/CA only/talin_CA.dcd waitfor -1

set atom1 [atomselect 0 "resid 967 and name CA"]
set atom2 [atomselect 0 "resid 989 and name CA"]
set atom3 [atomselect 0 "resid 696 and name CA"]
set atom4 [atomselect 0 "resid 736 and name CA"]

set data_angle "D:/College/Research/Mofrad\ Lab/Integrin/both/both_angle.txt"

set nf [molinfo top get numframes]


set outfile [open $data_angle w]

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
	set angle1 [expr acos([vecdot $vec3 {0 0 1})]
	set angle2 [expr acos([vecdot $vec4 {0 0 1})]
    set simdata($i.r) $angle
    puts $outfile "$i   $simdata($i.r)"
}

close $outfile

mol delete top

