# Jeux de données pour le projet A02Ga_analysis
# Ph. Grosjean (phgrosjean@sciviews.org) & G. Engels (Guyliann.Engels@umons.ac.be)
#
# Décommentez les lignes de code correspondant au jeu de données qui est assigné
# à votre équipe et exécutez ces lignes pour obtenir les données dans le dossier
# 'data'. Ensuite, vous travaillerez à partir de ces données-là.

SciViews::R(lang = "fr")
dir_create("data")


# Jeu de données #1 -------------------------------------------------------

# Voir https://bioone.org/journals/wildlife-biology/volume-21/issue-5/wlb.00105/A-morphometric-modeling-approach-to-distinguishing-among-bobcat-coyote-and/10.2981/wlb.00105.full

#?modeldata::scat
#scat1 <- read("scat", package = "modeldata")
#scat1$Month <- as.character(scat1$Month)
#attr(scat1, "comment") <- NULL
#write$rds(scat1, "data/scat1.rds")
#rm(scat1)


# Jeu de données #2 -------------------------------------------------------

#?mosaicData::HELPmiss
#hmiss2 <- read("HELPmiss", package = "mosaicData")
#hmiss2 <- unlabelise(hmiss2, self = FALSE)
#hmiss2$racegrp <- as.character(hmiss2$racegrp)
#hmiss2 <- as.data.table(hmiss2)
#write$rds(hmiss2, "data/hmiss2.rds")
#rm(hmiss2)


# Jeu de données #3 -------------------------------------------------------

# Note : espèces
# Agro.rupe = Agrostis rupestris All.
# Fest.quad = Festuca quadriflora Honckeny
# Sali.retu = Salix retusa L.

#?ade4::aravo
#aravo <- read("aravo", package = "ade4")
#aravo3 <- as.data.table(aravo$spe[, c("Agro.rupe", "Fest.quad", "Sali.retu")])
#aravo3 <- cbind(aravo3, aravo$env)
#aravo3$PhysD <- as.character(aravo3$PhysD)
#aravo3[c(1, 5:6, 8, 23, 45, 71:73), "Snow"] <- NA
#aravo3[c(5:10, 44, 81), "ZoogD"] <- NA
#write$rds(aravo3, "data/aravo3.rds")
#rm(aravo, aravo3)


# Jeu de données #4 -------------------------------------------------------

# Note: acariens Oribatida,
# Brachy = sous-ordre Brachypylina, Protopl = famille Protoplophoridae,
# LCIL = espèce Limnozetes ciliatus, ONOV = espèce Oppiella nova

#?vegan::mite
#mite4 <- read("mite", package = "vegan")
#mite4 <- mite4[, c('Brachy', 'Protopl', 'LCIL', 'ONOV')]
#attr(mite4, "comment") <- NULL
#mite4.env <- read("mite.env", package = "vegan")
#attr(mite4.env, "comment") <- NULL
#mite4.env$Substrate <- as.character(mite4.env$Substrate)
#mite4 <- cbind(mite4, mite4.env)
#mite4[c(2, 6, 8:9, 18, 35), "ONOV"] <- NA
#mite4[c(2, 10, 32:35), "Shrub"] <- NA
#write$rds(mite4, "data/mite4.rds")
#rm(mite4, mite4.env)


# Jeu de données #5 -------------------------------------------------------

#?survival::pbc
#pbc5 <- read("pbc", package = "survival")
#attr(pbc5, "comment") <- NULL
#pbc5$stage <- as.ordered(pbc5$stage)
#pbc5$hepato <- NULL
#pbc5$ascites <- NULL
#pbc5$spiders <- NULL
#pbc5$edema <- NULL
#pbc5$id <- NULL
#pbc5$status <- as.factor(pbc5$status)
#pbc5$trt <- as.character(pbc5$trt)
#write$rds(pbc5, "data/pbc5.rds")
#rm(pbc5)


# Jeu de données #6 -------------------------------------------------------

#?MASS::VA
#va6 <- read("VA", package = "MASS")
#attr(va6, "spec") <- NULL
#attr(va6, "comment") <- NULL
#va6[c(4:6, 18, 57), "age"] <- NA
#va6[c(18, 19, 57), "status"] <- NA
#va6[c(32, 48:50, 63, 120), "cell"] <- NA
#va6$status <- as.character(va6$status)
#write$rds(va6, "data/va6.rds")
#rm(va6)


# Jeu de données #7 -------------------------------------------------------

#?HistData::GaltonFamilies
#galton7 <- read("GaltonFamilies", package = "HistData")
#attr(galton7, "comment") <- NULL
#galton7 <- galton7[galton7$childNum < 5, ]
#galton7 <- galton7[galton7$children < 5, ]
#galton7$childNum <- as.ordered(galton7$childNum)
#galton7$children <- as.ordered(galton7$children)
#galton7$family <- as.character(galton7$family)
#write$rds(galton7, "data/galton7.rds")
#rm(galton7)


# Jeu de données #8 -------------------------------------------------------

#?HistData::Cholera
#cholera8 <- read("Cholera", package = "HistData")
#attr(cholera8, "comment") <- NULL
#cholera8[c(3, 6, 10, 12), "region"] <- NA
#cholera8[c(3, 10:11, 21), "pop_dens"] <- NA
#write$rds(cholera8, "data/cholera8.rds")
#rm(cholera8)
