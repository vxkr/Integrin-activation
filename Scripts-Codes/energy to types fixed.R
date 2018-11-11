setwd("D:/College/Research/Mofrad Lab/Integrin/Both/Energy/Residues")

segments <- list("NITY", "NPLY", "Tail", "TTV")
residues <- list("312", "313", "314", "315", "359", "360", "361", "362", "363", "364", "365", "370", "372", "380", "392", "393", "394", "396", "397", "398", "399", "400", "401", "403", "404", "408", "574", "576", "577", "578", "579", "580", "583", "618", "619", "620", "621", "622", "623", "635", "636", "637", "638", "639", "640")
everything <- list()
residue_names <- list()
counter <- 0

for (j in residues) {
	for (k in segments) {
		counter <- counter + 1
		filename <- paste(j, k, sep=" ")
		everything[[counter]] <- read.table(paste(filename, ".txt", sep = ""),`colnames<-`(6,NULL))
		residue_names[[counter]] <- j      
	}
}


for (i in 1:180) {
  everything[[i]] <- everything[[i]][,-1]
  everything[[i]] <- everything[[i]][,-1]
  everything[[i]] <- everything[[i]][,-4]
  everything[[i]] <- t(everything[[i]])
  rownames(everything[[i]]) <- NULL

  
}

elec_NITY <-  everything[[1]][1,]
elec_NPLY <-  everything[[2]][1,]
elec_Tail <-  everything[[3]][1,]
elec_TTV <-  everything[[4]][1,]
vdw_NITY <-   everything[[1]][2,]
vdw_NPLY <-   everything[[2]][2,]
vdw_Tail <-   everything[[3]][2,]
vdw_TTV <-   everything[[4]][2,]
total_NITY <- everything[[1]][3,]
total_NPLY <- everything[[2]][3,]
total_Tail <- everything[[3]][3,]
total_TTV <- everything[[4]][3,]


for (i in 5:180) {
  if (i %% 4 == 1) {
    #NITY
    elec_NITY <-rbind(elec_NITY, everything[[i]][1,])
    vdw_NITY <-rbind(vdw_NITY, everything[[i]][2,])
    total_NITY <-rbind(total_NITY, everything[[i]][3,])
    
  } else if (i %% 4 == 2) {
    #NPLY
    elec_NPLY <-rbind(elec_NPLY, everything[[i]][1,])
    vdw_NPLY <-rbind(vdw_NPLY, everything[[i]][2,])
    total_NPLY <-rbind(total_NPLY, everything[[i]][3,])
    
  } else if(i %% 4 == 3) {
    #Tail
    elec_Tail <-rbind(elec_Tail, everything[[i]][1,])
    vdw_Tail <-rbind(vdw_Tail, everything[[i]][2,])
    total_Tail <-rbind(total_Tail, everything[[i]][3,])
    
  } else {
    #TTV
    elec_TTV <-rbind(elec_TTV, everything[[i]][1,])
    vdw_TTV <-rbind(vdw_TTV, everything[[i]][2,])
    total_TTV <-rbind(total_TTV, everything[[i]][3,])
    
  }
}

rownames(elec_NITY) <- NULL
rownames(elec_NPLY) <- NULL
rownames(elec_Tail) <- NULL
rownames(elec_TTV) <- NULL
rownames(vdw_NITY) <- NULL
rownames(vdw_NPLY) <- NULL
rownames(vdw_Tail) <- NULL
rownames(vdw_TTV) <- NULL
rownames(total_NITY) <- NULL
rownames(total_NPLY) <- NULL
rownames(total_Tail) <- NULL
rownames(total_TTV) <- NULL

colnames(elec_NITY) <- NULL
colnames(elec_NPLY) <- NULL
colnames(elec_Tail) <- NULL
colnames(elec_TTV) <- NULL
colnames(vdw_NITY) <- NULL
colnames(vdw_NPLY) <- NULL
colnames(vdw_Tail) <- NULL
colnames(vdw_TTV) <- NULL
colnames(total_NITY) <- NULL
colnames(total_NPLY) <- NULL
colnames(total_Tail) <- NULL
colnames(total_TTV) <- NULL
