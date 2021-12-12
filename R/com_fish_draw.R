com_fish_draw = function(cores_p, n = 5){
  # BottleRocket1, BottleRocket2, 
  # Rushmore1, Royal1, Royal2, Zissou1, 
  # Darjeeling1, Darjeeling2, Chevalier1 , 
  # FantasticFox1 , Moonrise1, Moonrise2, 
  # Moonrise3, Cavalcanti1, GrandBudapest1, 
  # GrandBudapest2, IsleofDogs1, IsleofDogs2
  directory = cores_p
  cores = wes_palettes[[cores_p]][1:n]
  library(rfishdraw)
  library(wesanderson)
  if (!(directory %in% dir('images/'))){
    dir.create(paste('images/', directory, sep = ''))
  }
  for (i in 1:length(cores)){
    p = fish_draw(color = cores[i]) +
      theme_void()
    ggsave(filename = paste(cores_p,'_', i, '.png', sep = ''),
           plot = p, path = paste('images/', directory, sep = ''))
  }
}

com_fish_draw(cores_p = "BottleRocket2")
com_fish_draw(cores_p = "Royal1")
com_fish_draw(cores_p = "FantasticFox1")
com_fish_draw(cores_p = "Cavalcanti1")
com_fish_draw(cores_p = "GrandBudapest2")
