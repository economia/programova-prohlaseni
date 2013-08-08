for(i in 1:length(as.character(prohlaseni$V1))) {
  download.file(as.character(prohlaseni$V1)[i],paste("pdf/",prohlaseni$V2[i], " ",prohlaseni$V3[i],".pdf",sep=""))
}