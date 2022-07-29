# Le jeu du plus et moins
## Fonction
### Fonction pour demander le nombre et le vérifer
saisie_check = function(){
  check_number = FALSE
  while(check_number == FALSE){
    saisie = readline("Donnez un nombre : ") 
    saisie = as.integer(saisie) #On converti la chaine récupérée en nombre
    if (saisie < 1 || saisie > 100 || is.na(saisie)){
      print("Non valide !")
    } else {
      check_number = TRUE
    }
  }
  return(saisie)
}

}
### La fonction du jeu
game_plus_moins = function(){
  print("Bienvenue dans le jeu du plus moins")
  lenombre = as.integer(runif(n =1, min = 1, max = 100))
  trouvez = FALSE
  print("Devinez le nombre entier entre 1 et 100 !!!")
  while(trouvez == FALSE){
    saisie = saisie_check()
    if (saisie<lenombre){
      print("C'est pas ça ! Le Nombre est plus grand")
      trouvez=FALSE
    }else if(saisie>lenombre){
      print("C'est pas ça ! Le Nombre est plus petit")
      trouvez=FALSE
    }else if (saisie==lenombre){
      print("Bravo c'est Le Nombre")
      trouvez=TRUE
    }else{
      print("Je sais pas ce que vous avez fait mais c'est pas bon")
      trouvez=FALSE
    }
  }
}
