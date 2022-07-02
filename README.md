# Lexical-Analysis
![Project](https://img.shields.io/badge/Correction-Project-2F77DF?labelColor=679EEE&style=for-the-badge)
![Lex](https://img.shields.io/badge/Lex-dbca00?style=for-the-badge)
![C](https://img.shields.io/badge/C-A8B9CC?style=for-the-badge&logo=c&logoColor=ffffff)

**Exercice 2.2 Faire du grep avec flex**

Dans cet exercice, on travaille sur le dossier Analyse_Lexicale.
1. Tapez make exo2 et ouvrir le fichier Makefile et comprenez l’essentiel des lignes.
2. A quoi sert la ligne 13 . {nbcar++;} du fichier compter_mot.lex ?
3. Modifier le fichier compter_mot.lex pour compter les Lupin .
4. Modifier le fichier compter_mot.lex pour compter les LUPIN .
5. Modifier le fichier compter_mot.lex pour compter les lupin sans tenir compte de la casse.
6. Modifier le fichier compter_mot.lex pour afficher les lu.*in . Pourquoi ne trouve-t-on pas le même nombre
qu’à la question 7 de l’exercice précédent ?
7. Même question que ci-dessus mais afficher les numéros de lignes des occurences rencontrées.
8. Afficher les numéros de ligne qui contiennent plus d’une occurence.

**Exercice 2.3 Flex pour reconnaitre des commandes**

1. Donner un fichier startstop.lex qui reconnait les deux mots start et stop et affiche :
- Stop command received quand stop est reconnu.
- Start command received quand start est reconnu.
2. Compiler et donner en entrée un fichier contenant des start des stop.
3. Rajouter des motifs non reconnus dans le fichier d’entrée. Que fait lex s’il y a des motifs non reconnus ?
4. Ajouter l’option -s lors de la compilation avec lex. Que deviennent les motifs non reconnus ?
5. supprimer l’option -s et reconnaissez tous les motifs mais ne rien faire pour les motifs autre que start et
stop .

**Exercice 2.4 Flex pour faire du traitement de données**

1. Donner un fichier frequence.lex qui stocke dans un tableau les fréquences des lettres (majuscule ou minuscule).
2. Dans le programme principal, afficher le nombre total de caractères, le nombres de lettres, le nombre de lignes,
les fréquences et pourcentages des lettres.

**Exercice 3.1 Flex : langage de base**

On va définir un mini langage dans le fichier compil.lex qui a les lexèmes suivants :
- Des variables dont le nom commence par une lettre ou un _ ensuite le nom de la variable peut contenir des
caractères, des chiffres et des _ . Les variables sont automatiquement de type entier.
- Les constantes sont des entiers positifs ou négatifs en base 10.
- Les opérateurs arithmétiques de base du langage C : plus + , moins - , multiplier * , division entière / ,
modulo % .
- Les parenthèses ( et ) .
- L’affectation =
- L’instruction print suivi d’un nom de variable pour afficher une variable.
Il n’y a pas de point virgule mais on doit mettre une et une seule instruction par ligne.
1. Donner le fichier compil.lex qui reconnait ces différents lexèmes et qui donne en sortie la suite des lexèmes
(nom,valeur)
2. Donner un fichier contenant un programme respectant cette syntaxe et parser ce programme avec votre analyseur.

**Exercice 3.2 Flex : langage un peu plus riche**

On ajoute à l’exercice précédent :
- on a tous les opérateurs de comparaison de base du langage C : inférieur < , supérieur > , inférieur ou égal
<= , supérieur ou égal >= , égal == , différent != .
- on ajoute un si alors sinon finsi .
Donner le fichier compil.lex qui reconnait ces différents lexèmes et qui donne en sortie la suite des lexèmes
(nom,valeur)

**Exercice 3.3 Flex : les constantes**

1. Écrivez une fonction qui permet de calculer la valeur numérique d’une constante.
2. Qaund vous reconnaissez une constante, en plus de son nom, renvoyer sa valeur (dans yylval).
Exercice 3.4 Flex : le main
Note : yylex renvoie la valeur que vous avez spécifié dans vos différentes regexp. yylex renvoie 0 s’il n’y a plus rien
à lire.
1. Plutôt que d’utiliser la fonction main générée par Lex, définissez une fonction main dans votre fichier compil.lex
et appeler yylex dans une boucle.

**Exercice 3.5 Flex : arguments**

Note : yylex va lire dans la variable yyin qui est de type FILE *.
1. Utiliser argc et argv pour prendre en argument le nom du fichier à analyser.
Exercice 3.6 Flex : Tables des symboles des identifiants
Le but est de construire une table des symboles des identifiants.
1. Donner une structure de données pour stocker les identifiants dans une liste chaînée ou un tableau.
2. Vous donnerez à chaque identifiant un numéro (éventuellement l’indice du tableau).
3. Quand un identifiant est reconnu, renvoyer comme unité lexicale (id,num) où num est le numéro de l’identifiant.
4. À la fin de votre main afficher la table des symboles des identifiants.

**Exercice 3.7 Flex : Les mots réservés**

Le but est de différencier les mots réservés des identifiants.
1. Rajouter des règles dans votre fichier pour reconnaître les mots clés du langage.

**Exercice 3.8 Flex : Le moins unaire**

Supposons que les constantes soient définis par une regexp de la forme : [+-]?[0-9]+ .
1. Quelles sont les unités lexicales reconnues quand le code est A = -2 ?
2. Quelles sont les unités lexicales reconnues quand le code est A = 3 - 2 ?
3. Quelles sont les unités lexicales reconnues quand le code est A = 3-2 ?
4. Quel problème constatez-vous ? Y a-t-il une autre façon de gérer le moins ?
