# el-training 

## À propos de ce programme 

Ce document est un programme de formation pour les nouveaux employés afin d'apprendre les bases de Ruby on Rails et de ses technologies périphériques, essentielles pour Manyo. 
Quelle que soit la capacité des nouveaux employés, vous devrez effectuer une étape. 
La période de formation n'est pas précisée. 
La formation sera terminée lorsque toutes les étapes seront terminées. 

Ce programme suppose les caractères suivants. 

--Nouvel employé : Un étudiant de ce programme. 
--Supporter: Nous fournissons une éducation, des conseils et des conseils aux nouveaux employés. Il joue également un rôle de concertation avec les nouveaux collaborateurs et de définition ensemble des cahiers des charges. 

C'est à la discrétion du supporteur dans quelle mesure le supporteur est impliqué dans l'orientation. De plus, en ce qui concerne la période de formation, les accompagnateurs établiront à l'avance une ligne directrice tenant compte du niveau de compétence des nouveaux employés et de l'état des projets internes. 

## Vue d'ensemble 

### Configuration requise Dans 

ce programme, il vous sera demandé de développer un système de gestion des tâches en tant que problème. 
Le système de gestion des tâches souhaite effectuer les opérations suivantes : 

--Je veux enregistrer facilement ma 
tâche-Je veux pouvoir définir une date d'expiration pour une 
tâche-Je veux hiérarchiser les tâches-Je veux 
gérer le statut (non démarré / démarré / terminé)  
-Je veux affiner les tâches par statut
-avec le nom de la tâche / description de la tâche Je veux rechercher une tâche
--Je veux lister les tâches. Écran de liste (Priorité, par, par exemple, sur la base de la date de fin) voulez trier 
- vous voulez classer avec le libellé de la tâche, etc. 
- et l'enregistrement de l'utilisateur, voulez voir uniquement la tâche qu'il a enregistrée 

Aussi, les exigences ci-dessus Pour répondre à cette exigence, nous aimerions avoir les fonctions de gestion suivantes. 
--Fonction de 

gestion des utilisateurs 
### Navigateur de 

support -Le navigateur de support est supposé être la dernière version de macOS / Chrome 

### Configuration de l'application (serveur) 

Veuillez créer en utilisant les langues et middleware suivants () Les deux sont les dernières versions stables ). 

--Ruby 
--Ruby on Rails --Pour le 
serveur 
PostgreSQL 
, veuillez utiliser ce qui suit. 

--Heroku 

* Les exigences de performance et les exigences de sécurité ne sont pas spécifiées, mais veuillez le faire avec une qualité générale. 
  Si la réponse du site est trop mauvaise, merci de l'améliorer 

## Objectif final de 

ce cursus A la fin de ce cursus, il est supposé que vous apprendrez les éléments suivants. 

--Être capable de mettre en œuvre des applications Web de base à l'aide de Rails-Être capable d'  
utilisant Rails-Être capable de publier des applications en utilisant un environnement général avec des applications Rails
ajouter des fonctions et de maintenir des données pour les applications Rails publiées
--Apprenez le flux des relations publiques et de la fusion sur GitHub. Apprenez également les commandes Git nécessaires - pour 
  pouvoir vous engager à une taille de particule appropriée - pour être capable d' 
  écrire une description appropriée pour les relations publiques - pour pouvoir 
  répondre aux critiques et apporter des corrections - pour faire 
équipe avec des points peu clairs au bon moment 

Pouvoir poser des questions aux membres et aux parties liées (cette fois je serai un supporter) oralement ou par chat ## Livres recommandés En 

faisant progresser le programme de formation, nous recommandons les livres suivants comme livres recommandés. 

-[ 

Guide de pratique d'apprentissage rapide Ruby on Rails 5 qui peut être utilisé sur le terrain ] (https://book.mynavi.jp/ec/products/detail/id=93905) Guide de pratique d'apprentissage rapide Ruby on Rails 5 qui peut être utilisé sur le terrain est un programme de formation. Le sujet est également le système de gestion des tâches. 
Par conséquent, je pense qu'il y a beaucoup de points qui peuvent être utiles pour faire avancer cette formation. 

Il explique également ce qui n'a pas été couvert dans cette formation et comment procéder au développement de l'équipe. Veuillez vous y référer. 

## Une collection de sujets utiles pour le développement 

topics.md sont résumés dans topics.md qui n'ont pas été inclus dans une étape de tâche spécifique, mais nous aimerions que vous les utilisiez. Veuillez vous y référer et l'utiliser si nécessaire lors de la mise en œuvre du programme. 

## Challenge Step 

### Étape 1 : Construire un environnement de développement Rails 

#### 1-1 : Installer Ruby

-Utilisez [rbenv] (https://github.com/rbenv/rbenv) pour installer la dernière version de Ruby-Vérifiez 
que la version Ruby est affichée avec la commande `ruby -v` Veuillez 

#### 1-2 : Installez Rails-Installez 

Rails avec la commande Gem-Installez la 
dernière version de Rails-Assurez-vous que la 
commande `rails -v` affiche votre version de Rails S'il vous plaît 

#### 1-3: Installez la base de données (PostgreSQL) 
  -Installez 

PostgreSQL sur votre système d'exploitation- Pour macOS, installez-le avec `brew` etc. 

### Étape 2 : Installez le référentiel sur GitHub 
  Créons - Installons 

Git à portée de main - Pour macOS, veuillez installer avec 'brew` etc. - 
  Enregistrons le nom d'utilisateur et l'adresse e-mail with` gitconfig` - 
Pensons au nom de l'application (= nom du référentiel) 
--Créez un référentiel- 
  Obtenez-le si vous n'avez pas de compte- Créez un 
  référentiel vide dessus 

### Étape 3: Créez un projet Rails

--Créons le minimum de répertoires et de fichiers requis pour l'application avec la commande `rails new`-Créez 
un répertoire appelé` docs` directement sous le répertoire du projet (répertoire du nom de l'application) créé par `rails new`, et ceci. fichier de document-Pour garder 
  les spécifications de cette application sous contrôle afin qu'elles puissent être consultées à tout moment- 
Poussez l'application créée vers le référentiel créé sur GitHub- 
Ruby à utiliser pour spécifier la version Mettez votre version dans le `Gemfile` ( assurez-vous que Rails a déjà la version) 

### Étape 4 : Réfléchissez à l'image de l'application que vous souhaitez créer - 

avant de procéder à la conception Pensez à devenir une application ou une image complète (avec des supporters). La conception d'écran par prototypage papier est recommandée 
  - Pensez également à la manière dont cette application sera utilisée (si elle sera publiée sur Internet, pour un usage interne, etc...) (avec les supporters).Lisons 
la configuration requise et réfléchissons à la structure de données requise- 
  quel modèle (table) est susceptible d'être nécessaire- 
  quelles informations sont nécessaires dans la table- 
si vous pensez à la structure de données, écrivons-la à la main sur le diagramme du modèle-écrivons le  
  quand c'est fait et mettez-le dans le référentiel
  schéma de la table dans `README .md` (nom du modèle, nom de la colonne, type de données)

* Il n'est pas nécessaire de créer le bon diagramme de modèle pour le moment. Faisons-en une hypothèse pour le moment ( 

Imaginez que vous le répariez si vous pensez que c'est faux dans les étapes futures) ### Étape 5 : Définissons la connexion à la base de données (paramètre périphérique) 

- Tout d'abord, une nouvelle branche de sujet avec Git Coupons 
  - et plus tard, continuera à s'engager dans le travail sur la branche thématique 
- Bundler Let's install 
- `Installons le` pg` (pilote de base de données PostgreSQL) dans Gemfile` 
- `Database.Yml Mettons ` 
-créons une base de données avec le` rails db : commande create` - 
vérifions la connexion à la base de données avec la commande " rails db " - 
créez un PR sur GitHub et faites-le réviser. Sho 
  - si nécessaire dans le WIP (Work in Progress) essayez de sortir le PR . Voir la collection de sujets pour plus d'informations - veuillez 
  répondre à tous les commentaires que vous pourriez avoir. Si vous avez 2 LGTM (Looks Good To Me), fusionnez-les dans la branche principale. 

### Étape 6: Configurez RuboCop -  
Configurez RuboCop-Configurez RuboCop en tant que Linter / Formatter
Ce programme a été ajusté pour correspondre à la création de l'application Rails [retrieva-cop] (https :: / /github.com/retrieva/retrieva-cop) 
Rails-[retrieva-cop] dans `Gemfile` https://github.com/retrieva/retrieva-cop) 
-Introduisez Circle CI pour que RuboCop soit exécuté lors de la création d'un PR- 
  Compte tenu de la difficulté, le formulaire mis en œuvre par le supporter Mais ce n'est pas grave. Mettons 
à jour les conventions de codage selon les besoins en consultation avec les réviseurs des supporters 

### Étape 7 : Créez un modèle de tâche Créez 

un CRUD pour gérer vos tâches. 
Tout d'abord, créons-le avec une structure simple où seuls le nom et les détails peuvent être enregistrés. 

--Créons la classe de modèle requise pour le CRUD de la tâche avec la commande `rails generate`-Créons une 
migration et utilisons-la pour créer une table-Nous 
  pouvons garantir que la migration peut revenir à l'état précédent. C'est important ! Prenez l'habitude de jouer à `redo` - assurez-vous de 
  définir également des contraintes de base de données - 
assurez-vous que vous pouvez vous connecter à la base de données via le modèle avec la commande ` rails c` - 
  essayez cette fois Créons un enregistrement avec ActiveRecord
--Définir la validation-Pensons 
  à quelle validation doit être ajoutée à quelle colonne- 
Créez un PR sur GitHub et faites- le réviser 
- partons de l'écran pour pouvoir créer et éditer des tâches
 
### étape 8 : pour pouvoir afficher et enregistrer, mettre à jour et supprimer une spécification de tâche

Créons un écran de liste de tâches, un écran de détail, un écran de création, un écran de modification et une fonction de suppression. 

La création de ces fonctionnalités en même temps a tendance à rendre vos relations publiques énormes. 
Par conséquent, à l'étape 8, nous allons procéder avec PR en le divisant en plusieurs parties. 

Dans les étapes futures, si le PR est susceptible d'augmenter, déterminez si vous pouvez émettre le PR en deux ou plus. 

### Étape 8-1 : Créons un écran de liste de tâches et un écran de détail - Faisons en sorte que 

la tâche créée à l'étape 7 s'affiche sur l'écran de liste et l'écran de détail - 
Contrôleur et affichage avec la commande `rails generate` Créons un 
  - quel modèle ou pour adopter le moteur Décidons en consultation avec les supporters 
- ajoutons l'implémentation nécessaire au contrôleur et à la vue 
- `edit the routes.rb`,` http: // localhost Affichons l'écran de la liste des tâches à : 3000 / ` -Expliquons 
aux supporters quel type de traitement est effectué entre le navigateur Web et le serveur- 
Créez un PR sur GitHub Passons en revue 

### Étape 8-2 : Créez un écran de création de tâche et modifiez l'écran-Affichez un 

message flash sur l'écran après la création et la mise à jour - 
  Si une erreur de validation se produit, affichons un message d'erreur à l'écran - 
créez un PR sur GitHub pour examen

### Étape 8-3 : 

Pouvons supprimer la tâche - Pouvons supprimer la tâche créée - 
Affichez un message flash à l'écran après la suppression - 
Créez un PR sur GitHub et passez en revue pour leur demander 

### étapes 8 -4 : Regardons en arrière le code ajouté 

- pour le code ajouté à l'étape 8-1 à 8-3, essayons d'expliquer aux supporters 
  - classe, méthode, pour les variables 
  - le flux de traitement 

### étape 9 : Touchons le SQL 

- 
  Manipulons la base de données 
  - Commande `Connectons-nous à la base de données avec rails db` - affichage des tâches en SQL, créons, mettons à jour, supprimons - Accédons à l' 
écran de la liste des tâches et vérifions que le journal SQL circule - Voyons 
  Expliquez au supporter quel type de SQL est exécuté-Quel type de SQL est exécuté par 
la méthode d'ActiveRecord Luke Vérifions 
  - `rails Exécutons comme` find` et `where` en C` 

# # # étape 10 : à écrivez un test 

- préparez-vous à écrire la spécification 
  - Préparez `spec / spec_helper.rb` et` spec / rails_helper.rb` 
- Écrivons la spécification du modèle pour la validation 
  - n'écrit en fait pas le test de cette validation, faisons-le afin de fournir une compréhension approfondie de la spécification du modèle 
- Écrivons une spécification du système pour la fonction de tâche- nous allons 
intégrer RSpec avec Cercle CI et notifier Slack- 
  similaires à l' étape 6, il peut être fait par le supporter- 
livre de référence: https //leanpub.com/everydayrailsrspec-jp 

### Etape 11: Normaliser Let la partie japonaise de l'application -Utilisons le 

mécanisme i18n de Rails pour afficher le message d'erreur de validation en japonais 

# ## Étape 12: Définir le fuseau horaire Rails-Définir le 

fuseau horaire Rails au Japon (Tokyo) 

### Étape 13: 

Trier la liste des tâches par date et heure de création- ID actuel Mais trions ceci par ordre décroissant de date de création - 
écrivons dans la spécification du système que le tri fonctionne 

### Étape 14 : déployons - 

simple dans la branche principale Maintenant que nous avons un système de gestion des tâches, déployons-le . 
--Déployons sur Heroku
  --Si vous n'avez pas de compte, créons-le- 
--Si le-- Appuyez sur l'application déployée sur Heroku
  À partir de maintenant , enregistrons les tâches dans cette application et procédons au développement- 
  * Cependant, les applications Heroku peuvent être référencées n'importe où sur Internet, veuillez donc ne pas publier d'informations qui est mauvais à publier Let's- 
    Vous 
  voudrez peut -être inclure l' authentification de base à ce stade- Continuons à déployer votre application sur Heroku après chaque étape-La 
méthode de déploiement est décrite dans `README.md`. Let's 
  -À ce moment-là, c'est mieux pour inclure les informations de version du framework utilisé dans cette application, etc. 

### Étape 15: Ajoutons la 

date d'expiration-pour pouvoir enregistrer la date d'expiration de la tâche Let's- 
Trier par date d'expiration sur l'écran de liste- 
Développer la spécification - Publiez et révisez 
, puis relâchez 

### Étape 16 : Statut Ajoutons-le afin qu'il puisse être recherché - 

Ajoutons le statut (non démarré / démarré / terminé) 
  - [Option] Si vous n'êtes pas un débutant, vous pouvez introduisons une gem qui gère l'état. 
  --Permettons 
la recherche par titre et statut sur l' écran de liste-[Option] Si vous n'êtes pas un débutant, vous pouvez installer une Gem qui facilite la mise en œuvre de la recherche telle comme saccage.
--Lors de la réduction, vérifions le changement de SQL émis en regardant  
  l'habitude de vérifier si nécessaire dans les étapes suivantes- 
Collez l'index de recherche Faisons
  le journal-Préparons une certaine quantité de données de test, vérifions l'opération en regardant log / development.log, et ajoutons un index pour accélérer Vérifions qui est amélioré- 
  [Option] Voyons l' état d'utilisation de l'index du côté de la base de données en utilisant PostgreSQL expliquer etc.-Ajoutons la 
spécification du modèle à la recherche (développons également la spécification du système) 

### Étape 17 : définissons la priorité avec une expérience de mise en œuvre similaire peut l'omettre) 

--Vous pouvez enregistrer la priorité (élevée, moyenne, faible) pour la tâche Faisons-le- 
tri par priorité- 
développons la spécification du système-publions-la 
après PR et révisons (continuez) 

# ## Étape 18: Ajoutons la 

pagination - Ajoutons la pagination à l'écran de liste en utilisant une gemme appelée Kaminari 

### Étape 19: Devinons le design - 

Introduisons Bootstrap et devinons le design de l'application créée jusqu'à présent Let's - 
  [Option] 

Écrivez et concevez votre propre CSS ### Étape 20 : 

Créons un modèle utilisateur-Créons un modèle utilisateur-Créons le 
premier utilisateur avec seed 
  la 
tâche au premier utilisateur créé par seed- Indexons l'association
  -* Lors du déploiement sur Heroku, assurez-vous que la tâche et l'utilisateur déjà enregistrés sont liés (maintenance des données) 

### Étape 21 : Implémentons la fonction de connexion/déconnexion- 

sans utiliser de gems supplémentaires Implémentons-la nous-mêmes-Le 
  but est d'approfondir notre comprendre le fonctionnement des cookies HTTP et des sessions dans Rails en n'utilisant pas de gems telles que Devise-et approfondir notre compréhension de 
  l'authentification générale.Cela est également prévu (comme la gestion des mots de passe) 
--Implémentons un écran de connexion- 
Empêcher la transition vers la tâche page de gestion si vous n'êtes pas connecté-Connectez-vous 
à la tâche lorsque vous l'avez créée Associons-nous à l'utilisateur à l'intérieur-Affichons 
uniquement les tâches créées par nous-mêmes- 
Implémentons la fonction de déconnexion 

### Étape 22 : Implémentons la gestion des utilisateurs screen- 

Menu Gérer à l'écran Ajoutons un 
- pour gérer l'écran, essayez de mettre au-dessus de l'URL toujours `/ admin` 
  -` avant de l'ajouter à routes.rb`, (le nom doit être `* _path`) à l'avance URL et nom de routage -Concevons dans cet essayez 
l'utilisateur a-Affichez le nombre de tâches que l'utilisateur a sur l'écran de la liste des utilisateurs. 
Implémenter la liste d'utilisateurs / créer / mettre à jour / supprimer
--Une fois que vous supprimez un utilisateur, essayez de supprimer les tâches que l'utilisateur a- 
  Incorporez un mécanisme pour éviter le problème N + 1-Permettez-vous de 
voir la liste des tâches créées par l'utilisateur Let's 

### Étape 23: Ajouter des rôles à Users- Parlons - 

Distinguer utilisateurs de les utilisateurs administratifs et les utilisateurs TLE générales 
Seuls les utilisateurs administratifs accéder à des écrans de gestion des utilisateurs 
  --Quand un utilisateur général accède à l'écran de gestion, nous allons émettre un dédié exception-Intercepter l'exception 
  et afficher la page d'erreur appropriée (vous pouvez faites-le à l'étape 25) --Gestion 
des utilisateurs Permettons de sélectionner un rôle à l'écran- Contrôlons la 
suppression pour qu'aucun utilisateur administratif ne soit perdu-Utilisons le 
  rappel de modèle- 
* Gem peut être utilisé ou non librement 

# ## Étape 24 : 

Pouvons étiqueter les tâches - Laissons les tâches être étiquetées multiples - Pouvons 
rechercher par étiqueté 

### Étape 25 : Erreur Définissez la page correctement - Faisons de la 

page d'erreur par défaut fournie par Rails l'écran que vous créé - 
Définissez la page d'erreur de manière appropriée en fonction de la situation
--Deux 
  types de paramètres de code d'état, la page 404 et la page 500, sont requis au moins 

## Postscript 
Merci pour votre travail acharné. 
Vous avez terminé le programme éducatif !!

Je ne pouvais pas le couvrir dans ce programme, mais je pense que les sujets suivants seront nécessaires à l'avenir, donc je pense que c'est une bonne idée de continuer à apprendre (je pense que vous apprendrez souvent à travers des projets). 

--Approfondir une compréhension de base des applications 
  Web- Comprendre HTTP et HTTPS- 
Apprendre une utilisation un peu plus avancée de Rails- 
  STI 
  --Logging 
  -Transactions explicites -Traitement asynchrone 
  -Pipeline d' 
  actifs (plutôt type de version) Sujet) 
-Meilleure 
compréhension des frontends tels que JavaScript et CSS- Une meilleure compréhension des databases- 
  SQL- 
  Building plus de performance axée sur queries- 
  Une meilleure compréhension des indices-Une meilleure compréhension du 
du serveur 
  Linux OS 
  serveur --web (Nginx) paramètres 
  serveur -Demande (Unicorn) paramètres- 
  Comprendre les paramètres de PostgreSQL-Comprendre les 
outils de publication- 
  Capistrano
  --Ansible