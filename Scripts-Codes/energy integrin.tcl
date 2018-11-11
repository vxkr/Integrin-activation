
proc ENERGY { mol sel1 sel2 } {

set mol1 [atomselect top $sel1]
set mol2 [atomselect top $sel2]
namdenergy -ofile "$mol$sel1$sel2" -exe namd2 -par D:/College/Research/Mofrad/ Lab/Code/Parameter/ Files/par_all36_carb.prm -par D:/College/Research/Mofrad/ Lab/Code/Parameter/ Files/par_all36_cgenff.prm -par D:/College/Research/Mofrad/ Lab/Code/Parameter/ Files/par_all36_lipid.prm -par D:/College/Research/Mofrad/ Lab/Code/Parameter/ Files/par_all36m_prot.prm -par D:/College/Research/Mofrad/ Lab/Code/Parameter/ Files/par_all36_na.prm -par D:/College/Research/Mofrad/ Lab/Code/Parameter/ Files/par_all36_prot.prm -par D:/College/Research/Mofrad/ Lab/Code/Parameter/ Files/toppar_all36_carb_glycopeptide.str -par D:/College/Research/Mofrad/ Lab/Code/Parameter/ Files/toppar_water_ions_namd.str -sel $mol1 $mol2 -vdw -elec -nonb
}



#Template
#
#
#

#set selec1 ""
#set selec2 "protein and segname PP3 and resid 744 to 762"
#Integrin tail
#cd D:/College/Research/Mofrad/ Lab/Integrin/Talin/Energy
#ENERGY $molname $selec1 $selec2
#
#
#set selec1 ""
#set selec2 "protein and segname PP3 and resid 744 to 747"
#NPLY
#cd D:/College/Research/Mofrad/ Lab/Integrin/Talin/Energy
#ENERGY $molname $selec1 $selec2
#
#
#set selec1 ""
#set selec2 "protein and segname PP3 and resid 752 to 754"
#TTV
#cd D:/College/Research/Mofrad/ Lab/Integrin/Talin/Energy
#ENERGY $molname $selec1 $selec2
#
#
#
#set selec1 ""
#set selec2 "protein and segname PP3 and resid 756 to 759"
#NITY
#cd D:/College/Research/Mofrad/ Lab/Integrin/Talin/Energy
#ENERGY $molname $selec1 $selec2
#
#mol delete top

#
#
#
#Template




mol new D:/College/Research/Mofrad/ Lab/Integrin/Both/both.psf waitfor -1
mol addfile D:/College/Research/Mofrad/ Lab/Integrin/Both/both2.dcd waitfor -1
set molname "both_"

Talin
foreach a [list 312 313 314 315 359 360 361 362 363 364 365 370 372 380 392 393 394 396 397 398 399 400 401 403 404 408] {
	
	set selec1 "protein and segname PP1 and resid $a"
	set selec2 "protein and segname PP3 and resid 744 to 762"
	#Integrin tail
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP1 and resid $a"
	set selec2 "protein and segname PP3 and resid 744 to 747"
	#NPLY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP1 and resid $a"
	set selec2 "protein and segname PP3 and resid 752 to 754"
	#TTV
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2



	set selec1 "protein and segname PP1 and resid $a"
	set selec2 "protein and segname PP3 and resid 756 to 759"
	#NITY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2

}


Kinldin PP5
foreach b [list 312 313 314 315] {
	
	set selec1 "protein and segname PP5 and resid $b"
	set selec2 "protein and segname PP3 and resid 744 to 762"
	#Integrin tail
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP5 and resid $b"
	set selec2 "protein and segname PP3 and resid 744 to 747"
	#NPLY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP5 and resid $b"
	set selec2 "protein and segname PP3 and resid 752 to 754"
	#TTV
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2



	set selec1 "protein and segname PP5 and resid $b"
	set selec2 "protein and segname PP3 and resid 756 to 759"
	#NITY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2

}


Kinldin PP6

	set selec1 "protein and segname PP6 and resid 636"
	set selec2 "protein and segname PP3 and resid 756 to 759"
	#NITY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2
	
foreach c [list 637 638 639 640] {
	
	set selec1 "protein and segname PP6 and resid $c"
	set selec2 "protein and segname PP3 and resid 744 to 762"
	#Integrin tail
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP6 and resid $c"
	set selec2 "protein and segname PP3 and resid 744 to 747"
	#NPLY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP6 and resid $c"
	set selec2 "protein and segname PP3 and resid 752 to 754"
	#TTV
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2



	set selec1 "protein and segname PP6 and resid $c"
	set selec2 "protein and segname PP3 and resid 756 to 759"
	#NITY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Both/Energy/Residues
	ENERGY $molname $selec1 $selec2

}


mol delete top



mol new D:/College/Research/Mofrad/ Lab/Integrin/Kindlin/kindlin.psf waitfor -1
mol addfile D:/College/Research/Mofrad/ Lab/Integrin/Kindlin/kindlin2.dcd waitfor -1
set molname "kindlin_"


#Kinldin PP4
foreach b [list 312 313 314 315] {
	
	set selec1 "protein and segname PP4 and resid $b"
	set selec2 "protein and segname PP2 and resid 744 to 762"
	#Integrin tail
	cd D:/College/Research/Mofrad/ Lab/Integrin/Kindlin/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP4 and resid $b"
	set selec2 "protein and segname PP2 and resid 744 to 747"
	#NPLY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Kindlin/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP4 and resid $b"
	set selec2 "protein and segname PP2 and resid 752 to 754"
	#TTV
	cd D:/College/Research/Mofrad/ Lab/Integrin/Kindlin/Energy/Residues
	ENERGY $molname $selec1 $selec2



	set selec1 "protein and segname PP4 and resid $b"
	set selec2 "protein and segname PP2 and resid 756 to 759"
	#NITY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Kindlin/Energy/Residues
	ENERGY $molname $selec1 $selec2

}


#Kinldin PP5
foreach c [list 574 576 577 578 579 580 583 618 619 620 621 622 623 635 636 637 638 639 640] {
	
	set selec1 "protein and segname PP5 and resid $c"
	set selec2 "protein and segname PP2 and resid 744 to 762"
	#Integrin tail
	cd D:/College/Research/Mofrad/ Lab/Integrin/Kindlin/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP5 and resid $c"
	set selec2 "protein and segname PP2 and resid 744 to 747"
	#NPLY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Kindlin/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP5 and resid $c"
	set selec2 "protein and segname PP2 and resid 752 to 754"
	#TTV
	cd D:/College/Research/Mofrad/ Lab/Integrin/Kindlin/Energy/Residues
	ENERGY $molname $selec1 $selec2



	set selec1 "protein and segname PP5 and resid $c"
	set selec2 "protein and segname PP2 and resid 756 to 759"
	#NITY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Kindlin/Energy/Residues
	ENERGY $molname $selec1 $selec2

}

mol delete top



mol new D:/College/Research/Mofrad/ Lab/Integrin/Talin/talin.psf waitfor -1
mol addfile D:/College/Research/Mofrad/ Lab/Integrin/Talin/talin2.dcd waitfor -1
set molname "talin_"

#Talin
foreach a [list 312 313 314 315 359 360 361 362 363 364 365 370 372 380 392 393 394 396 397 398 399 400 401 403 404 408] {
	
	set selec1 "protein and segname PP1 and resid $a"
	set selec2 "protein and segname PP3 and resid 744 to 762"
	#Integrin tail
	cd D:/College/Research/Mofrad/ Lab/Integrin/Talin/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP1 and resid $a"
	set selec2 "protein and segname PP3 and resid 744 to 747"
	#NPLY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Talin/Energy/Residues
	ENERGY $molname $selec1 $selec2


	set selec1 "protein and segname PP1 and resid $a"
	set selec2 "protein and segname PP3 and resid 752 to 754"
	#TTV
	cd D:/College/Research/Mofrad/ Lab/Integrin/Talin/Energy/Residues
	ENERGY $molname $selec1 $selec2



	set selec1 "protein and segname PP1 and resid $a"
	set selec2 "protein and segname PP3 and resid 756 to 759"
	#NITY
	cd D:/College/Research/Mofrad/ Lab/Integrin/Talin/Energy/Residues
	ENERGY $molname $selec1 $selec2

}


mol delete top