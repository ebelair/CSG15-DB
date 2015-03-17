# CSGames 2015 - Database

#### -- English [below](#csgames-2015---database-1) ↓

Ce repo GitHub contient la compétition de **base de données** des [CSGames 2015](http://csgames.org/2015/).

## Installation

La compétition se déroule dans un environnement UNIX avec une instance locale de PostgreSQL, sur laquelle se retrouve une copie la base de données de [MusicBrainz](http://musicbrainz.org/).

Pour répliquer l'environnement, il s'agit simplement de suivre toutes les étapes indiquées sur la page suivante:

#### [MusicBrainz Database Setup (mbslave on Bitbucket)](https://bitbucket.org/lalinsky/mbslave)

Une fois l'installation complétée, les compétiteurs pourront rédiger les requêtes à l'aide du logiciel [pgAdmin](http://www.pgadmin.org/download/), ou simplement à partir de la console via `psql`, selon leur préférence.

## Documents

Les documents fournis aux compétiteurs sont disponibles ici:

- Examen théorique ([français](https://github.com/ebelair/CSG15-DB/blob/master/documents/CSG15-DB-Pratique.FR.md), [anglais](https://github.com/ebelair/CSG15-DB/blob/master/documents/CSG15-DB-Pratique.EN.md))
- Examen pratique ([français](https://github.com/ebelair/CSG15-DB/blob/master/documents/CSG15-DB-Theorique.FR.md), [anglais](https://github.com/ebelair/CSG15-DB/blob/master/documents/CSG15-DB-Theorique.EN.md))
- Structure de la DB ([anglais](https://github.com/ebelair/CSG15-DB/blob/master/documents/CSG15-DB-MusicBrainz.md))

## Fonctionnement

Les requêtes à rédiger sont fournies dans le dossier `queries`, puis les résultats attendus se retrouvent dans le dossier `results_validation`.

Pour les compétiteurs, les fichiers du dossier `queries` seront vides. Ils devront remplir les requêtes dans les fichiers respectifs aux questions de l'énoncé, puis pourront valider leurs résultats en exécutant la commande suivante dans la racine du dossier:

```
./validate.sh
```

Le script retourne si les résultats obtenus pour chacune des requêtes sont identiques aux résultats demandés. Cela ne permet donc de valider que l'exactitude des solutions.

*-- Le script provient des [CSGames 2014](http://csgames.org/2014/), organisés par l'École de Technologie Supérieure. Merci à l'ÉTS!*

> **Note:** Les résultats ont été obtenus à l'aide de la version `20150225-002259` de MusicBrainz. Les résultats risquent de différer sur une version plus récente de la base de données.
> 
> Les bons résultats peuvent être obtenus en changeant la ligne 7 du fichier `validate.sh` pour `CLEAN_UP_TEMP_DIRS=false`. Les résultats apparaîtront dans le dossier `query_results`.

## À propos
La compétition a été développée par Émile Bélair, gradué en génie informatique à l'Université de Sherbrooke. Vous pouvez aussi me suivre sur [Facebook](https://fb.me/ebelair), [GitHub](http://github.com/ebelair) et [LinkedIn](http://ca.linkedin.com/in/emilebelair/fr). N'hésitez pas à m'écrire pour toute question, commentaire ou suggestion!

---

# CSGames 2015 - Database

#### -- Français [ci-haut](#csgames-2015---database) ↑

This GitHub repo contains the **database** competition of the [CSGames 2015](http://csgames.org/2015/).

## Installation

The competition takes place in a UNIX environment with a local instance of PostgreSQL, on which a copy of the [MusicBrainz](http://musicbrainz.org/) database can be found.

To replicate the environment, you only need to follow the steps indicated here:

#### [MusicBrainz Database Setup (mbslave on Bitbucket)](https://bitbucket.org/lalinsky/mbslave)

Once the installation is complete, competitors can write their queries using [pgAdmin](http://www.pgadmin.org/download/), or simply by using `psql` in the terminal, according to their preferences.

## Documents

The following documents are given to the competitors:

- Theorical Exam ([English](https://github.com/ebelair/CSG15-DB/blob/master/documents/CSG15-DB-Pratique.EN.md), [French](https://github.com/ebelair/CSG15-DB/blob/master/documents/CSG15-DB-Pratique.FR.md))
- Practical Exam ([English](https://github.com/ebelair/CSG15-DB/blob/master/documents/CSG15-DB-Theorique.EN.md), [French](https://github.com/ebelair/CSG15-DB/blob/master/documents/CSG15-DB-Theorique.FR.md))
- DB Structure ([English](https://github.com/ebelair/CSG15-DB/blob/master/documents/CSG15-DB-MusicBrainz.md))

## Usage

The queries to build are available in the `queries` folder, and the expected results can be found in the `results_validation` folder.

For the competitors, files in the `queries` folder will be empty. They will have to fill them with their answers to the respective questions in the exam document, and will then be able to validate the resultats using the following command in the repo root folder:

```
./validate.sh
```

The scrit returns whether the obtained results of each query are identical the the expected results. It can therefore only be used to validate the accuracy of the solutions.

*-- The script comes from [CSGames 2014](http://csgames.org/2014/), which were hosted by the École de Technologie Supérieure. Thanks, ÉTS!*

> **Note:** The validation results have been obtained using MusicBrainz version `20150225-002259`. The results may differ on a more recent version of the database.
> 
> The right results can be obtained by changing line 7 of file `validate.sh` to `CLEAN_UP_TEMP_DIRS=false`. The results will appear in the `query_results` folder.


## About
This competition was developed by Émile Bélair, graduate of Université de Sherbrooke in Computer Engineering. You can follow me on [Facebook](http://fb.me/ebelair), [GitHub](http://github.com/ebelair) and [LinkedIn](http://ca.linkedin.com/in/emilebelair/en). Please don't hesitate to contact me for any questions, comments or suggestions!
