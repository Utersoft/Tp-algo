// WILHELM STEPHANE
//ALGORITHME : GARAGE
//BUT : Afficher les fonctionnalitées attendues
//ENTREE : 
//SORTIE : Les garages et leurs voitures

type ad = enregistrement
	Numero : entier
	voie : chaine
	CP : entier
	ville : chaine
	pays : chaine
	tel : entier
	email : chaine
fin

type garage = enregistrement
	nom : chaine
	adresse : ad
	capacite : tableau[1..15]
fin

type voiture = enregistrement
	marque : chaine
	modele : chaine
	Energie : chaine
	puissance : chaine
	DYN : chaine
	Couleur : chaine
	Options : chaine
	Annee : entier
	prix : entier
	cote : entier
	MECirculation : chaine
	Age : chaine
	plaque : tableau [1..9]
fin

fonction crea_voiture(engine : voiture) : voiture
var : x, y, z, o, i : entier

debut
	randomize
	x <-0 
	x <- random(5)+1
	si x = 1 alors
		engine.marque <- Peugeot
	finsi
	si x = 2 alors
		engine.marque <- Renault
	finsi
	si x = 3 alors
		engine.marque <- Citroen
	finsi
	si x = 4 alors
		engine.marque <- Opel
	finsi
	si x = 5 alors
		engine.marque <- Nissan
	finsi
	 y <- 0
	 randomize
	 y <- random(5)+1
	 si y = 1 alors
	 	engine.energie <- Essence
	 finsi
	 si y = 2 alors
	 	engine.energie <- GPL
	 finsi
	 si y = 3 alors
	 	engine.energie <- Electrique
	 finsi
	 si y = 4 alors
	 	engine.energie <- Hybride
	 finsi
	 si y = 5 alors
	 	engine.energie <- Diesel
	 finsi
	 z <- 0
	 randomize
	 z <- random(4)+1
	 si z = 1 alors
	 	engine.couleur <- rouge
	 finsi
	 si z = 2 alors
	 	engine.couleur <- bleue
	 finsi
	 si z = 3 alors
	 	engine.couleur <- noire
	 finsi
	 si z = 4 alors
	 	engine.couleur <- grise
	 finsi
	 engine.annee <- random(3)+2014
	 engine.prix <- random(20000)+9999
	 engine.age <- 2017 - engine.annee
	 si engine.age = 0 alors
	 	engine.cote = engine.prix
	 finsi
	 si engine.age >= 1 alors
	 	engine.cote = engine.prix *(1-(25/100))
	 	si engine.age >=2 alors
	 		engine.cote <- engine.cote *(1-(10/100))
	 		si engine.age >=3 alors
	 			engine.cote <- engine.cote *(1-(10/100))
	 		finsi
	 	finsi
	 sinon
	 	engine.cote <- 0
	 finsi
	 pour i <- 1 à 9 faire
	 	si (i <> 4) ET (i < 7) alors 
	 		o<- random(1)
	 		si o = 0 alors
	 			engine.plaque[i] <- chr(random(10)+48)
	 		sinon
	 			si o = 0 alors
	 				engin.plaque[i] <- chr(random(26)+65)
	 		finsi
	 	sinon
	 		si (i = 4) OU (i = 7) alors 
	 			engine.plaque[i] = chr(45)
	 		sinon
	 			engine.plaque[i] = chr(random(10)+48)
	 		finsi
	 	finsi
	 finpour
	 crea_voiture <- engine
fin

procedure crea_garage(gara1, gara2 : garage)
var i, x : entier

debut
	gara1.nom <- Mecha
	gara2.nom <- Techno
	gara1.Numero <- 3
	gara2.Numero <- 4
	gara1.voie <- rue de maupassant
	gara2.voie <- rue des chevaux
	gara1.CP <- 67600
	gara2.CP <- 67000
	gara1.Ville <- Selestat
	gara2.Ville <- Strasbourg
	gara1.Pays <- France
	gara2.Pays <- France
	gara1.tel <- 0389868974
	gara2.tel <- 0328252679
	gara1.email <- legarageselestat@garage.net
	gara2.email <- legaragestrasbourg@garage.net
	randomize
	pour i <- 1 a random(10)+5 faire
		gara1.capacite[i]<- crea_voiture (engine)
	finpour
	randomize
	pour x <- 1 a random(10)+5 faire
		gara2.capacite[x]<- crea_voiture (engine)
	finpour
fin

var i, j, x, total : entier
moy : reel

debut
	crea_garage
	ecrire gara1.nom
	pour i <- 1 a 15 faire
		ECRIRE gara1.capacite[i]
		si gara1.capacite[i] <> 0 alors
			j <- j + 1
		finsi
	finpour
	ecrire gara2.nom
	pour i <- 1 a 15 faire
		ECRIRE gara2.capacite[i]
		si gara2.capacite[i] <> 0 alors
			x <- x + 1
		finsi
	finpour
	si j < x alors
		ecrire "Le garage qui a le plus de voiture est ", gara2.nom
	sinon
		ecrire "Le garage qui a le plus de voiture est ", gara1.nom
	finsi

	moy <- (j + x)/2
	ecrire "Il y a une moyenne de ", moy, " voitures."
	total <- j + x
	ecrire "Il y a ", total, " voitures au total dans les 2 garages."

fin
