# PROJET3A :Modélisation d'une rupture de digue
#### /!\ Ce dépôt de code correspond à une partie des codes utilisés et modifiés lors de notre projet. Le code de calcul BBAMR utilisé pour la modélisation de la rupture de la digue n'est pas disponible dans ce dépôt. /!\

### amr.f90
Cette partie de code décrit la modélisation de l'érosion de la digue dans le cas du modèle de Saint-Venant.

### bbamrSV.inp
Fichier d'entrée pour le modèle de Saint-Venant.

### bbamrBIF.inp
Fichier d'entrée pour le modèle d'Euler bi-fluide.

### fct_mvsol.f90
Programme permettant la modélisation de l'érosion de la digue pour le modèle d'Euler bi-fluide.


## Introduction du rapport de projet

La modélisation de la rupture de digue est un domaine important pour la prévention
et la gestion des risques liés aux inondations. Les modèles numériques sont des
outils précieux pour simuler les processus physiques complexes associés à la rupture
de digue. Dans ce rapport, nous nous intéressons à deux modèles de simulation
bien connus : le modèle de Saint-Venant et le modèle d’Euler bi-fluide. Le modèle
de Saint-Venant est un modèle classique de l’hydraulique qui utilise les équations de
conservation de la masse et de la quantité de mouvement pour simuler les écoulements
en surface. Le modèle d’Euler bi-fluide, quant à lui, permet de modéliser les écoulements
biphasiques en considérant les propriétés distinctes des deux fluides présents,
tels que l’eau et l’air. Nous présentons dans ce rapport une comparaison de ces deux
modèles appliqués à la modélisation de la rupture de digue, en mettant en évidence
leurs avantages et leurs limites respectives. Pour cela, nous utilisons le code de calcul
BBAMR (Block-Based Adaptive Mesh Refinement) développé par le laboratoire Imath
de l’université de Toulon. Ce code résout les systèmes d’Euler et de Saint-Venant par
la méthode des volumes finis qui, contrairement aux éléments finis, exploite la forme
”forte” des équations à résoudre. Nous nous attachons tout d’abord à décrire précisément
les deux modèles utilisés, ensuite, nous expliquons la mise en place des calculs et
nous apportons une attention particulière à la modélisation de la digue, de sa brèche
et de l’érosion de celle-ci. Enfin, nous analysons les résultats obtenus et tentons de
tirer des conclusions sur les deux modèles utilisés.
