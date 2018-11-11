


proc ENERGY { mol sel1 sel2 } {

set mol1 [atomselect top $sel1]
set mol2 [atomselect top $sel2]
namdenergy -ofile "$mol$sel1$sel2" -exe namd2 -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36_carb.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36_cgenff.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36_lipid.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36m_prot.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36_na.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/par_all36_prot.prm -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/toppar_all36_carb_glycopeptide.str -par D:/College/Research/Mofrad\ Lab/Code/Parameter\ Files/toppar_water_ions_namd.str -sel $mol1 $mol2 -vdw -elec -nonb
}


mol new D:/College/Research/Mofrad\ Lab/Simulations/KASH_ionized.psf waitfor -1
mol addfile D:/College/Research/Mofrad\ Lab/Simulations/2-KASH_RUN1_ARG1fix.dcd step 2 waitfor -1
set molname "2_"



set selec1 "lipid"
set selec2 "protein and segname P1 and resid 24 to 32"

cd D:/College/Research/Mofrad\ Lab
ENERGY $molname $selec1 $selec2

set selec1 "lipid"
set selec2 "protein and segname P2 and resid 24 to 32"

cd D:/College/Research/Mofrad\ Lab
ENERGY $molname $selec1 $selec2

mol delete top