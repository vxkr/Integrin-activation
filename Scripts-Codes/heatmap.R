
totalp1nf_heatmap <- 
  heatmap.2(
    vdw_TTV,
    col=colorRampPalette(c("royalblue4", "royalblue2", "deepskyblue1","gray95","orchid1", "orchid2","orchid4"))(200),
    breaks=seq(-20,20,by=0.2),
    Rowv=NULL,
    Colv=NULL,
    labCol = bottom,
    labRow = residues_names,
    key=TRUE,
    adjRow=c(1,0),
    adjCol=c(0,1),
    symkey=FALSE,
    keysize=1,
    density.info="none",
    trace='none',
    cexRow=0.9,
    cexCol=0.9, 
    key.ylab=NA, 
    offsetRow = 2, 
    offsetCol = 2
  )

title("VdW energy TTV", line = -3)