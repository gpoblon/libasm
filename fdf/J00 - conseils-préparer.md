Cette premiere journée a pour vocation de mettre en application les conseils suivants.
Tu devras avoir produit un dossier *tests* dans lequel se trouvera un programme de test mettant en oeuvre tous les conseils ci-dessous (ce sera vérifié).
Je conseille de lire attentivement la journée complète avant de commencer.

Le rendu sera réalisé dans un dossier *J00* présent dans le repo *fdf*

Le rendu de cette journée sera utilisé tout au long de la journée suivante
Mieux il sera réalisé (sécurisé) moins il sera nécessaire de le retravailler demain
Pas nécessaire de tester le programme avec des fichiers erronés ou autre, ces tests seront réalisés demain dans les règles de l'art, simplement faire en sorte qu'il compile, fonctionne avec les fichiers *test_J00_success* et *test_J00_fail* et retourne les messages de réussite/erreur adéquats, conformément aux conseils donnés.

# EX00 : Le programme return
Créer un programme dans le dossier *ex00*.
Makefile, main.c et autre si nécessaire, qui devra compiler (sans flags, on s'en moque).

Le programme devra prendre 1 seul et unique parametre qui représentera un fichier à ouvrir.

Le programme devra ensuite lire 1 ligne (et une seule), vérifier que cette ligne ne contient que des chiffres et écrire un message d'erreur pour CHAQUE erreur rencontrée (ne pas s'arreter à la premiere erreur donc).

Si au moins une erreur a été rencontrée, le main doit retourner `EXIT_FAILURE` aussi, sinon `EXIT_SUCCESS`.

Note 1: ce fichier pourra etre erroné, il faudra donc gérer un maximum d'erreurs (relatives au fichier en lui-meme, ou son contenu, ou aux parametres recus).
Note 2: décomposer ton programme de test en de nombreuses petites fonctions permettra une gestion simplifiée des erreurs.

# EX01 : Le programme exit
Créer un programme dans le dossier *ex01*.
Makefile, main.c et autre si nécessaire, qui devra compiler (sans flags, on s'en moque).

Le programme devra prendre 1 seul et unique parametre qui représentera un fichier à ouvrir.

Le programme devra ensuite lire 1 ligne (et une seule), vérifier que cette ligne ne contient que des chiffres et écrire un message d'erreur et exit en cas d'erreur.

Note 1: ce fichier pourra etre erroné, il faudra donc gérer un maximum d'erreurs (relatives au fichier en lui-meme, ou son contenu, ou aux parametres recus)

# EX02 : Le programme return-bis
Créer un programme dans le dossier *ex02*.
Makefile, main.c et autre si nécessaire, qui devra compiler (sans flags, on s'en moque).

Le programme pourra prendre de 1 a *n* parametres qui représenteront chacun un fichier à ouvrir.

Pour chaque fichier, afficher le nom du fichier en jaune, puis le programme devra lire 1 ligne (et une seule), vérifier que cette ligne ne contient que des chiffres et écrire un message d'erreur pour CHAQUE erreur rencontrée, pour chaque fichier (ne pas s'arreter à la premiere erreur donc).

Si au moins une erreur a été rencontrée, le main doit retourner `EXIT_FAILURE` aussi, sinon `EXIT_SUCCESS`.

Note 1: ces fichiers pourront etre erronés, il faudra donc gérer un maximum d'erreurs (relatives aux fichiers en eux-memes, ou leur contenu, ou aux parametres recus).
Note 2: décomposer ton programme de test en de nombreuses petites fonctions permettra une gestion simplifiée des erreurs.


# Conseil préliminaire
Il est intéressant d'avoir a disposition deux programmes (ou plus):
Un executable destiné a exécuter et tester une feature en particulier
Un executable pour le programme complet
Si tu travailles sur le parseur, fais le plutot sur le programme de test que sur fdf, de maniere a avoir un plus petit programme (evite de commenter la moitie de ton fdf), plus modulaire (changer des parametres etc plus facilement), plus facile a debugger.

Le plus simple étant de dupliquer ton makefile (et l'architecture liée dans un dossier *tests*), et travailler dans ce dossier *tests*.

# TOUJOURS sécuriser le code
Tout au long des exercices, cette règle devra etre appliquée.

`exit(EXIT_SUCCESS);` si tout s'est bien passé, sinon `exit(EXIT_FAILURE);`, et vérifier sur l'ensemble des fichiers *tests* que cela fonctionne
Pour tester, `./fdf *file*; echo $?` `echo $?` va imprimer dans le terminal le *status* du programme (0 si SUCCESS, 1 si FAILURE)
Noter que `exit(status)` peut etre remplacé par `return(status)` (c'est mieux) lorsque l'on souhaite poursuivre l'execution du programme ou que l'on ramène l'ensemble des erreurs dans le main

# Conseils généraux pour les projets 42

## Fonction de gestion d'erreur (avec print)
Créer une fonction qui en meme temps retourne/exit `EXIT_FAILURE` et print un message d'erreur sur la sortie d'erreur. 
La fonction sera utilisée de la sorte :
Cas 1, en utilisant `return(status)`;
```
int fn() {
    // ...
    if (error)
        return (print_err("Erreur x..."));
    return (EXIT_SUCCESS);
}
```
Cas 2, en utilisant `exit(status)`;
```
void fn() {
    // ...
    if (error)
        exit_err("Erreur x..."));
}
```
De maniere générale utiliser des fonctions qui retournent un `int` correspondant au status de la fonction, et les travailler de la maniere indiquée ci-dessus.

## Initialisation des parametres
Utiliser `ft_bzero()` ou les initialisations de structures a certaines valeurs pour eviter les valeurs non-initialisées
Ex: `mystruct = (t_mystruct){NULL, NULL, NULL, 0, -1};`

## Fonction englobant malloc
`void *ft_malloc(void *);` qui appelle malloc et `return(EXIT_FAILURE)` si le malloc fail

## Fonction de free centralisée
Appelée partout ou il y aurait un `exit(status);` ou uniquement dans le main si toutes les errreurs y sont retournées. D'ou l'intéret du `return()` vs `exit()`
