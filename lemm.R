lemm  <- function() {
  library(rjson)

    for(i in 44:length(list.files("txt"))) {
      projev  <- readLines(paste("txt/", list.files("txt")[i], sep=""))
      soubor  <- file(paste("lemm/", list.files("txt")[i], sep = ""), "a")
      
        for (j in 1:length(projev)) {
          url  <- paste("http://cslemm.weps.cz/?text=", URLencode(projev[j]), "&all=true", sep = "")
          lemma  <- fromJSON(file = url)
          writeLines(as.character(lemma$result), soubor)    
        }
     
      close(soubor)
      
    }
  }

