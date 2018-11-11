library(bio3d)
list_pdb <- list()
list_dcd <- list()
cij <- list()

list_pdb[[1]] <- read.pdb("D:/College/Research/Mofrad Lab/Integrin/Both/CA only/both_CA.pdb")
list_dcd[[1]] <- read.dcd("D:/College/Research/Mofrad Lab/Integrin/Both/CA only/both_CA.dcd")
list_pdb[[2]] <- read.pdb("D:/College/Research/Mofrad Lab/Integrin/Kindlin/CA only/kindlin_CA.pdb")
list_dcd[[2]] <- read.dcd("D:/College/Research/Mofrad Lab/Integrin/Kindlin/CA only/kindlin_CA.dcd")
list_pdb[[3]] <- read.pdb("D:/College/Research/Mofrad Lab/Integrin/Talin/CA only/talin_CA.pdb")
list_dcd[[3]] <- read.dcd("D:/College/Research/Mofrad Lab/Integrin/Talin/CA only/talin_CA.dcd")




pdb_names <- list("Both", "Kindlin", "Talin")
graph_names <- list("RMSD", "RMSD Histogram", "RMSF", "PCA", "PCA clustered", "PCA first 2 loadings", "Dynamic cross correlation", "PyMol")
dcd_images <- list("1.png","1.png","1.png")

for (i in 1:3) {
	a <- list_pdb[[i]]
	b <- list_dcd[[i]]
	
	ca.inds <- atom.select(a, elety="CA")
	xyz <- fit.xyz(fixed=a$xyz, mobile=b, fixed.inds=ca.inds$xyz, mobile.inds=ca.inds$xyz)
	dim(xyz) == dim(b)
	rd <- rmsd(xyz[1,ca.inds$xyz], xyz[,ca.inds$xyz])
	
	mypath <- file.path("D:/College/Research/Mofrad Lab/Integrin", pdb_names[[i]], "Graphs automated 500", graph_names[[1]], dcd_images[[i]])
	png(filename = mypath, width = 600, height = 500, units = "px", pointsize = 18, bg = "white")
	plot(rd, typ="l", ylab="RMSD", xlab="Frame No.")
	points(lowess(rd), typ="l", col="red", lty=2, lwd=2)
	dev.off()
	
	mypath <- file.path("D:/College/Research/Mofrad Lab/Integrin", pdb_names[[i]], "Graphs automated 500", graph_names[[2]], dcd_images[[i]])
	png(filename = mypath, width = 600, height = 500, units = "px", pointsize = 18, bg = "white")
	hist(rd, breaks=40, freq=FALSE, main="RMSD Histogram", xlab="RMSD")
	lines(density(rd), col="gray", lwd=3)
	dev.off()
	
	rf <- rmsf(xyz[,ca.inds$xyz])
	
	mypath <- file.path("D:/College/Research/Mofrad Lab/Integrin", pdb_names[[i]], "Graphs automated 500", graph_names[[3]], dcd_images[[i]])
	png(filename = mypath, width = 600, height = 500, units = "px", pointsize = 18, bg = "white")
	plot(rf, ylab="RMSF", xlab="Residue Position", typ="l")
	dev.off()
	
	pc <- pca.xyz(xyz[,ca.inds$xyz])
	
	mypath <- file.path("D:/College/Research/Mofrad Lab/Integrin", pdb_names[[i]], "Graphs automated 500", graph_names[[4]], dcd_images[[i]])
	png(filename = mypath, width = 600, height = 500, units = "px", pointsize = 18, bg = "white")
	plot(pc, col=bwr.colors(nrow(xyz)))
	dev.off()
	
	hc <- hclust(dist(pc$z[,1:2]))
	grps <- cutree(hc, k=2)
	
	mypath <- file.path("D:/College/Research/Mofrad Lab/Integrin", pdb_names[[i]], "Graphs automated 500", graph_names[[5]], dcd_images[[i]])
	png(filename = mypath, width = 600, height = 500, units = "px", pointsize = 18, bg = "white")
	plot(pc, col=grps)
	dev.off()
	
	mypath <- file.path("D:/College/Research/Mofrad Lab/Integrin", pdb_names[[i]], "Graphs automated 500", graph_names[[6]], dcd_images[[i]])
	png(filename = mypath, width = 600, height = 500, units = "px", pointsize = 18, bg = "white")
	plot.bio3d(pc$au[,1], ylab="PC1 (A)", xlab="Residue Position", typ="l")
	points(pc$au[,2], typ="l", col="blue")
	dev.off()
	
	cij[[i]] <- dccm(xyz[,ca.inds$xyz])
	
	mypath <- file.path("D:/College/Research/Mofrad Lab/Integrin", pdb_names[[i]], "Graphs automated 500", graph_names[[7]], dcd_images[[i]])
	png(filename = mypath, width = 750, height = 750, units = "px", pointsize = 15, bg = "white")
	plot(cij[[i]])
	dev.off()
	
	setwd(file.path("D:/College/Research/Mofrad Lab/Integrin", pdb_names[[i]], "Graphs automated 500", graph_names[[8]]))
	
	pymol.dccm(cij[[i]], a, type="script", step=0.1, as="cartoon")
	
	
}




