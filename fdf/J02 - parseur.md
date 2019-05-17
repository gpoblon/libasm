# PARSEUR

Copier dans le dossier parseur_test l'EX00 du J00 pour faire le parseur (l'idée directrice de cet exercice sera reproduite). Ce dossier sera le dossier de référence tout au long de la journée.
Entre chaque exercice une correction aura lieu afin de poursuivre, il s'agira d'itérer sur *parseur_test*.

Bien entendu, il faudra tester chaque exercice sur les fichiers faisant sens crées au *J01*, et d'en ajouter si nécessaire.
PS : Avoir un fichier (au nom equivoque) pour chaque erreur possible est une bonne pratique !!

## EX00 : Simple retranscription
Lire l'ensemble du contenu du fichier recu en parametre ligne par ligne, et les print telles quelles
Si une erreur de quelque nature que ce soit survient, afficher un message d'erreur, et retourner `EXIT_FAILURE` depuis le main (donc sans utiliser `exit(status)`) 

## EX01 : EX00 + Afficher chaque ligne en enlevant tous les espaces superflus

## EX02 : EX01 + Afficher chaque ligne en vérifiant l'altitude
L'altitude est impérative, et est impérativement un nombre: vérfier que chaque élément suivant un espace est bien un chiffre... (ou un `\n` ? à voir)

## EX03 : EX02 + Afficher chaque ligne en vérifiant la couleur optionnelle
La couleur (`,0xAAAAAA`) étant optionnelle dans un fichier, son absence n'est pas une erreur
Vérifier que chaque élément suivant un `*nombre*,0x` est un nombre en hexa (`0...9A...F` majuscule ou minuscule)

## EX04 : créer et intégrer la structure itérative permettant de stocker les données parsées

### Déterminer la structure contenant le résultat du parsing
Liste ou tableau (se demander si on va simplement relire ou réecrire sur les élements, la simplicité d'itération sur le elems etc) ? Que contiendra-t-il/elle ?

### Créer et intégrer la structure à l'EX03
Chaque élément du fichier parsé sera inséré dans la structure

### Check nombre d'éléments par ligne
Vérifier que chaque ligne du fichier contient bien le meme nombre d'elems que les autres lignes (la premiere fait foi, donc.)

## EX05 : EX04 + Fonction debug
Permet de verifier que le fichier est geré correctement:
Créer et intégrer à l'EX04 une fonction affichant le tableau (ou la liste) contenant le résultat du fichier parsé.
Il s'agit simplement de print un tableau sur la sortie standard, puis `exit(EXIT_SUCCESS)` le programme;