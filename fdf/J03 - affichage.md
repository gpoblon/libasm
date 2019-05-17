# Affichage
Créer un dossier *affichage* dans lequel les tests de la journée seront effectués.
Entre chaque exercice une correction aura lieu afin de poursuivre, il s'agira d'itérer sur *affichage*.

## EX00 : Affichage générique mlx
(Deja fait, a priori)
Créer un programme ayant pour unique but d'afficher une fenetre mlx dans laquelle on peut draw des pixels en se déplaçant à l'aide de touches

## EX01 : EX00 + Affichage d'une ligne
Faire en sorte que le programme affiche une ligne de gauche a droite de la fenetre ;
Puis faire en sorte que le programme prenne un nombre en argument, et affiche autant de lignes que le nombre passé en argument
Aucune gestion d'erreur n'est demandée

## EX03 : EX02 + couleur
Ajouter de la couleur: la couleur de chaque pixel dépendra de sa position en x et y

## EX04A : EX03 modifié + points
Afficher 50 points espacés de 10 pixels, avec un retour à la ligne tous les 10 points.
50 et 10 sont des variables passées en argument
Pas de gestion d'erreur demandée

## EX05 : EX03/EX04 + Affichage d'une grille
Afficher maintenant une grille entière (l'équivalent d'un fichier ne contenant que des 0).
Chaque intersection de la grille (coordonnée de point) sera espacée de manière a avoir un affichage correct (similaire a celui d'un fdf classique, ex: 10 pixels en x et y entre chaque point). La vue isométrique n'est pas encore demandée
Il s'agit en réalité "simplement" de relier les points de l'exercice 04

#### fonction d'affichage par point
Itérer sur chaque point de la map
Pour relier deux points P1 et P2 entre eux, appliquer l'algorithme de Bresenham : boucler sur chaque pixel de P1 vers P2 (Bresenham permet de trouver le bon "chemin" en ligne droite pour atteindre P2 depuis P1). A chaque itération, écrire un pixel de la couleur souhaitée.

## EX06: Affichage des altitudes
L'altitude est, sur une grille plate, un simple ajout a sa valeur en y (`y = y + altitude`).
L'altitude est passée en 3e argument, et est appliquée a tous les points ayant une valeur `x + y` paire

## EX07: EX06 + Affichage isométrique
Une vue *isométrique* devra etre appliquée sur les coordonnées de chaque point