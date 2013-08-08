html  <- function() {
  soubor  <- file("prohlaseni.html", "a")
  for(i in 1:nrow(vysledky)) {
    writeLines(paste('<a href="',
                     as.character(vysledky$V9[i]),
                     '" target="_blank"><div class="prohlaseni" title="Celkem ',
                     as.character(vysledky$V6[i]),
                     ' slov. Kliknutím otevřete v nové záložce kompletní programové prohlášení."><h3 class="premier">',
                     as.character(vysledky$V1[i]),
                     '<br>',
                     as.character(vysledky$V2[i]),
                     '</h3><div class="kontejner"><div class="kolecko" style="width:',
                     as.character(vysledky$V7[i]),
                     'px;height:',
                     as.character(vysledky$V7[i]),
                     'px;margin-left:-',
                     as.character(vysledky$V7[i]/2),
                     'px;margin-top:-',
                     as.character(vysledky$V7[i]/2),
                     'px"></div></div><ol><li>',
                     as.character(vysledky$V3[i]),
                     '</li><li>',
                     as.character(vysledky$V4[i]),
                     '</li><li>',
                     as.character(vysledky$V5[i]),
                     '</li></ol></div></a>',
                     sep=""), soubor)    
  }
  close(soubor)
}