# J01 - préparer un programme sécurisé
# Verifier que le(s) fichier(s) n'est pas corrompu

Cette journée te permettra de créer des prgrammes sécurisés, a l'aide de tests complets et automatisés.
Utile pour presque tous les programmes, pas seulement fdf.

Utilise les ressources de la journée précédente, en ajoutant les dossiers et script de tests dans les dossiers EX01 et EX02 (uniquement) du J00

# EX00 - Préparer les tests
Lancer le programme sur des fichiers divers:
Créer un dossier *tests* contenant les fichiers suivants (liste non-exhaustive):
copier */dev/null*
copier */dev/random*
créer un fichier ne contenant aucun chiffres (caracteres speciaux, lettres etc)
créer un fichier contenant des lettres en plus des chiffres
créer un fichier contenant des chiffres provoquant un overflow sur `atoi()`
créer un fichier sans retour a la ligne
créer un fichier valide
Trouver d'autres tests intéressants pour fdf !

# EX01 - Script programme
Créer un script lancant en boucle fdf avec tous les fichiers recus en parametre (penser a arreter `./fdf` avant l'affichage)

# EX02 - Amélioration du Script - retour fonction
Ajouter au script une vérification: si *./fdf* retourne *SUCCESS*, continuer (afficher un message de succès), si il retourne *FAILURE*, appeler afficher l'erreur, `read()` pour mettre en pause le programme

# EX03 - Amélioration du script - check segfault
Ajouter au script la vérification d'un segfault. (rechercher la valeur de retour d'un programme ayant segfault), et afficher un message bloquant (`read()` en cas de segfault)

# EX04 - Script leaks checker
Créer un autre script permettant de vérifier les leaks de fdf, avec les fichiers recus en parametre (peut n'avoir aucun parametre)