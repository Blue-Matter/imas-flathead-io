
# Copy Files from imas-flathead to imas-flathead-io

Gitdir = "C:/Github/"
maindir = paste0(Gitdir,"imas-flathead")
iodir = paste0(Gitdir,"imas-flathead-io/docs")

copystuff = function(fromdir,todir,overwrite=T){
  tocopy = list.files(fromdir,full.names = T)
  copyshort = list.files(fromdir)
  for(ff in 1:length(tocopy))file.copy(tocopy[ff],paste0(todir,"/",copyshort[ff]),overwrite=overwrite)
  
}

copystuff(paste0(maindir,"/operating_models/figures"), paste0(iodir,"/Figures/OMs"))




