setwd("D:/College/Research/Mofrad Lab/Energy/Fixed_protein/residues")

segments <- list("P1", "P2", "P3", "P4")
runs <- list("2", "3")
resdiues <- list("24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55")
everything_fixed <- list()
residue_names <- list()
counter <- 0

for (i in runs) {
	for (j in segments) {
		if (j == "P1") {
			for (k in resdiues) {
				counter <- counter + 1
				filename <- paste(i, j, k, sep="_")
				everything_fixed[[counter]] <- read.table(paste(filename, ".txt", sep = ""),`colnames<-`(6,NULL))
				title <- paste(j,k, sep="_")
				header <- c(title, title, title)
				residue_names[[counter]] <- header
				
			}
		} else if (j == "P2") {
			for (k in resdiues) {
				counter <- counter + 1
				filename <- paste(i, j, k, sep="_")
				everything_fixed[[counter]] <- read.table(paste(filename, ".txt", sep = ""),`colnames<-`(6,NULL))
				title <- paste(j,k, sep="_")
				header <- c(title, title, title)
				residue_names[[counter]] <- header
			}
		} else if (j == "P3") {
			for (k in resdiues[1:21]) {
				counter <- counter + 1
				filename <- paste(i, j, k, sep="_")
				everything_fixed[[counter]] <- read.table(paste(filename, ".txt", sep = ""),`colnames<-`(6,NULL))
				title <- paste(j,k, sep="_")
				header <- c(title, title, title)
				residue_names[[counter]] <- header
		  } 
		} else {
			for (k in resdiues[1:18]) {
				counter <- counter + 1
				filename <- paste(i, j, k, sep="_")
				everything_fixed[[counter]] <- read.table(paste(filename, ".txt", sep = ""),`colnames<-`(6,NULL))
				title <- paste(j,k, sep="_")
				header <- c(title, title, title)
				residue_names[[counter]] <- header
			}
		}
	}
}

for (i in 1:206) {
	everything_fixed[[i]] <- everything_fixed[[i]][,-1]
	everything_fixed[[i]] <- everything_fixed[[i]][,-1]
	everything_fixed[[i]] <- everything_fixed[[i]][,-4]
	everything_fixed[[i]] <- t(everything_fixed[[i]])
	
}

for (i in 1:103) {
  #everything_fixed[[i]] <- everything_fixed[[i]][,-1]
  everything_fixed[[i]] <- cbind(everything_fixed[[i]], everything_fixed[[i+103]])
  rownames(everything_fixed[[i]]) <- NULL
  rownames(residue_names[[i]]) <- NULL
  everything_fixed[[i]] <- cbind(residue_names[[i]], everything_fixed[[i]])
}

everything_fixed <- everything_fixed[1:103]

elec_p1_fixed <-  everything_fixed[[1]][1,]
elec_p2_fixed <-  everything_fixed[[33]][1,]
elec_p3_fixed <-  everything_fixed[[65]][1,]
elec_p4_fixed <-  everything_fixed[[86]][1,]
vdw_p1_fixed <-   everything_fixed[[1]][2,]
vdw_p2_fixed <-   everything_fixed[[33]][2,]
vdw_p3_fixed <-   everything_fixed[[65]][2,]
vdw_p4_fixed <-   everything_fixed[[86]][2,]
total_p1_fixed <- everything_fixed[[1]][3,]
total_p2_fixed <- everything_fixed[[33]][3,]
total_p3_fixed <- everything_fixed[[65]][3,]
total_p4_fixed <- everything_fixed[[86]][3,]


for (i in 1:99) {
  if (i < 32) {
    #p1
    elec_p1_fixed <-rbind(elec_p1_fixed, everything_fixed[[i+1]][1,])
    vdw_p1_fixed <-rbind(vdw_p1_fixed, everything_fixed[[i+1]][2,])
    total_p1_fixed <-rbind(total_p1_fixed, everything_fixed[[i+1]][3,])
    
  } else if (i < 63) {
    #p2
    elec_p2_fixed <-rbind(elec_p2_fixed, everything_fixed[[i+2]][1,])
    vdw_p2_fixed <-rbind(vdw_p2_fixed, everything_fixed[[i+2]][2,])
    total_p2_fixed <-rbind(total_p2_fixed, everything_fixed[[i+2]][3,])
    
  } else if(i < 83) {
    #p3
    elec_p3_fixed <-rbind(elec_p3_fixed, everything_fixed[[i+3]][1,])
    vdw_p3_fixed <-rbind(vdw_p3_fixed, everything_fixed[[i+3]][2,])
    total_p3_fixed <-rbind(total_p3_fixed, everything_fixed[[i+3]][3,])
    
  } else {
    #p4
    elec_p4_fixed <-rbind(elec_p4_fixed, everything_fixed[[i+4]][1,])
    vdw_p4_fixed <-rbind(vdw_p4_fixed, everything_fixed[[i+4]][2,])
    total_p4_fixed <-rbind(total_p4_fixed, everything_fixed[[i+4]][3,])
    
  }
}

rownames(elec_p1_fixed) <- NULL
rownames(elec_p2_fixed) <- NULL
rownames(elec_p3_fixed) <- NULL
rownames(elec_p4_fixed) <- NULL
rownames(vdw_p1_fixed) <- NULL
rownames(vdw_p2_fixed) <- NULL
rownames(vdw_p3_fixed) <- NULL
rownames(vdw_p4_fixed) <- NULL
rownames(total_p1_fixed) <- NULL
rownames(total_p2_fixed) <- NULL
rownames(total_p3_fixed) <- NULL
rownames(total_p4_fixed) <- NULL
  
colnames(elec_p1_fixed) <- NULL
colnames(elec_p2_fixed) <- NULL
colnames(elec_p3_fixed) <- NULL
colnames(elec_p4_fixed) <- NULL
colnames(vdw_p1_fixed) <- NULL
colnames(vdw_p2_fixed) <- NULL
colnames(vdw_p3_fixed) <- NULL
colnames(vdw_p4_fixed) <- NULL
colnames(total_p1_fixed) <- NULL
colnames(total_p2_fixed) <- NULL
colnames(total_p3_fixed) <- NULL
colnames(total_p4_fixed) <- NULL
