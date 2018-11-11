library(bio3d)

dcd1 <- read.dcd("D:/College/Research/Mofrad Lab/Redux/Fixed 2_3/P1.dcd")
pdb1 <- read.pdb("D:/College/Research/Mofrad Lab/Redux/Fixed 2_3/P1.pdb")

dcd2 <- read.dcd("D:/College/Research/Mofrad Lab/Redux/Fixed 2_3/P2.dcd")
pdb2 <- read.pdb("D:/College/Research/Mofrad Lab/Redux/Fixed 2_3/P2.pdb")

dcd3 <- read.dcd("D:/College/Research/Mofrad Lab/Redux/Fixed 2_3/P3.dcd")
pdb3 <- read.pdb("D:/College/Research/Mofrad Lab/Redux/Fixed 2_3/P3.pdb")

dcd4 <- read.dcd("D:/College/Research/Mofrad Lab/Redux/Fixed 2_3/P4.dcd")
pdb4 <- read.pdb("D:/College/Research/Mofrad Lab/Redux/Fixed 2_3/P4.pdb")

ca.inds <- atom.select(pdb1, elety="CA")
xyz <- fit.xyz(fixed=pdb1$xyz, mobile=dcd1, fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
dim(xyz) == dim(dcd1)
rf1 <- rmsf(xyz[,ca.inds$xyz])

ca.inds <- atom.select(pdb2, elety="CA")
xyz <- fit.xyz(fixed=pdb2$xyz, mobile=dcd2, fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
dim(xyz) == dim(dcd2)
rf2 <- rmsf(xyz[,ca.inds$xyz])

ca.inds <- atom.select(pdb3, elety="CA")
xyz <- fit.xyz(fixed=pdb3$xyz, mobile=dcd3, fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
dim(xyz) == dim(dcd3)
rf3 <- rmsf(xyz[,ca.inds$xyz])

ca.inds <- atom.select(pdb4, elety="CA")
xyz <- fit.xyz(fixed=pdb4$xyz, mobile=dcd4, fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
dim(xyz) == dim(dcd4)
rf4 <- rmsf(xyz[,ca.inds$xyz])