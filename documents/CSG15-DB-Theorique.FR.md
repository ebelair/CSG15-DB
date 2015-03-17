# CSGames 2015 - Database - Théorique

En base de données, nous n'aimons pas vraiment les questions théoriques, surtout lorsque nous n'avons pas accès à Internet pour leur répondre. Cependant, comme vous n'avez qu'un seul ordinateur pour 2 personnes, il faut en occuper un pendant que l'autre rédige du SQL.

Répondez donc aux questions suivantes au meilleur de vos connaissances!

## Section 1 - Historique

### Question 1.1
En quelle année a été inventé le langage SQL?
- [ ] 1971
- [x] 1974
- [ ] 1977
- [ ] 1980

--
### Question 1.2
Quelle compagnie fut la toute première à développer un RDBMS propulsé par le langage SQL?
- [x] IBM
- [ ] Microsoft
- [ ] Oracle
- [ ] Sybase

--
### Question 1.3
Qui a inventé le Oracle RDBMS?
- [ ] Bjarne Stroustrup
- [ ] Edgar F. Codd
- [ ] George J. Laurer
- [x] Larry Ellison

--
### Question 1.4
En quelle année est apparue la première version de MySQL?
- [ ] 1990
- [ ] 1993
- [x] 1995
- [ ] 1998

--
### Question 1.5
Quelle est l'origine de PostgreSQL?
- [x] Développé dans le cadre d'un projet de recherche universitaire
- [ ] Développé par un hobbyist puis propulsé par la communauté *open-source*
- [ ] Développé par une compagnie à but non lucratif créée spécifiquement pour le projet
- [ ] Développé par une compagnie commerciale, qui a ensuite décidé de le rendre *open-source*

--
### Question 1.6
Autour de quelle année a été introduit le terme **NoSQL**?
- [x] Avant 2000
- [ ] Entre 2000 et 2005
- [ ] Entre 2005 et 2010
- [ ] Entre 2010 et 2015

--
### Question 1.7
Quelles étaient les 3 principales motivations derrière le développement des bases de données NoSQL?
- [x] Facilité de conception
- [ ] Facilité d'installation et de déploiement
- [x] Facilité de mise à l'échelle *(scaling)*
- [x] Plus de contrôle sur la disponibilité des données
- [ ] Plus de contrôle sur le lien entre les données
- [ ] Retrait de l'utilisation du vieux langage SQL

--
### Question 1.8
Quelle base de données de type NoSQL est présentement la plus utilisée, en 2015?
- [ ] Cassandra
- [ ] CouchDB
- [x] MongoDB
- [ ] Redis

--
### Question 1.9
Hors du monde NoSQL, quelle est le RDBMS le plus utilisé, en 2015?
- [ ] Microsoft Access
- [ ] Microsoft SQL Server
- [ ] MySQL
- [x] Oracle
- [ ] SQLite

--
### Question 1.10
Que signifie l'acronyme SQL?
- [ ] Sequential Query Language
- [ ] Standard Query Language
- [x] Structured Query Language
- [ ] Symbolic Query Language

## Section 2 - Fonctionnalités de base

### Question 2.1
Lequel des éléments suivants ne fait pas partie d'un système de base de données standard?
- [ ] Données utilisateur
- [ ] Métadonnées
- [x] Rapports
- [ ] Index

--
### Question 2.2
Une clé primaire est sélectionnée à partir de quel élément?
- [x] Clé candidate
- [ ] Clé composite
- [ ] Clé étrangère
- [ ] Déterminant

--
### Question 2.3
Quel élément identifie une relation entre deux éléments?
- [ ] Clé candidate
- [ ] Clé composite
- [x] Clé étrangère
- [ ] Déterminant

--
### Question 2.4
Qu'est-ce qu'une tuple?
- [ ] Une clé dans une table
- [ ] Une colonne dans une table
- [x] Une rangée dans une table
- [ ] Une table à 2 dimensions

--
### Question 2.5
Dans une relation *1-N*, comment est appelée l'entitée qui est du côté *1* de la relation?
- [x] Parent
- [ ] Enfant
- [ ] Instance
- [ ] Type
- [ ] Sous-type

--
### Question 2.6
Dans une relation *1:N*, la clé étrangère est stockée dans quelle table?
- [ ] Les tables des deux côtés de la relation
- [ ] La table du côté *1* de la relation
- [x] La table du côté *N* de la relation
- [ ] Une table de n'importe quel côté de la relation
- [ ] Une table spécifique pour stocker les clés étrangères

--
### Question 2.7
Quelle est l'utilité d'une vue?
- [ ] Cacher des colonnes spécifiques
- [ ] Cacher des lignes spécifiques
- [ ] Cacher des requêtes SQL complexes
- [x] Toutes ces réponses

--
### Question 2.8
Des vues construites à l'aide d'instructions SQL SELECT qui sont conformes au standard SQL-92 ne doivent **pas** contenir lequel de ces éléments?
- [ ] FROM
- [ ] WHERE
- [ ] GROUP BY
- [x] ORDER BY

--
### Question 2.9
Lequel de ces attributs doit être assigné à une clé primaire?
- [ ] AUTO_INCREMENT
- [ ] COLLATE
- [ ] DEFAULT
- [x] NOT NULL

--
### Question 2.10
Quel type de *join* est nécessaire pour inclure les rangées qui n'ont pas de valeur équivalente?
- [ ] *Equi-join*
- [ ] *Natural join*
- [x] *Outer join*
- [ ] *Self join*
- [ ] *Cross join*
- [ ] N'importe quel type de *join*

## Section 3 - Fonctionnalités avancées
Qu'est-ce que le nettoyage de données (ou *data scrubbing*)?

- [ ] Le processus de rejeter des données d'un entrepôt et créer les index nécessaires
- [ ] Le processus de charger des données d'un entrepôt et créer les index nécessaires
- [ ] Le processus d'améliorer la qualité des données après l'avoir déplacé dans un entrepôt de données
- [x] Le processus d'améliorer la qualité des données avant de le déplacer dans un entrepôt de données

--
### Question 3.2
Lequel des éléments suivants est un but visé par la fouille de données (ou *data mining*)?

- [x] Eexpliquer un événement observer ou une condition
- [ ] Confirmer que des données existent
- [ ] Analyser les données pour trouver des relations
- [ ] Pour créer un entrepôt de données

--
### Question 3.3
La transformation de données inclut généralement lequel des éléments suivants?

- [x] Le processus de changer des données d'un niveau détaille à un niveau résumé
- [ ] Le processus de changer des données d'un niveau résumé à un niveau détaillé
- [ ] Joindre les données d'une source de données à plusieurs différentes sources de données
- [ ] Séparer les donnes d'une source de données en différentes sources de données

--
### Question 3.4
Qu'est-ce que des données transitoires (ou *transient data*)?

- [x] Des données pour lesquelles les changements à des enregistrements existants impliquent la suppression de leur version précédente
- [ ] Des données pour lesquelles les changements à des enregistrements existants n'impliquent pas la suppression de leur version précédente
- [ ] Des données qui ne sont jamais modifiées ou supprimées après avoir été ajoutées
- [ ] Des données qui ne sont jamais supprimées après avoir été ajoutées

--
### Question 3.5
Une base de données distribuées peut utiliser laquelle des stratégies suivantes?

- [ ] Centralisée à un seul emplacement, accédée par de multiples sites
- [ ] Partiellement ou entièrement répliquée à travers différents sites
- [ ] Partitionnée en segments sur différents sites
- [x] Toutes ces réponses

# Section 4 - Systèmes

Les systèmes de base de données peuvent être triés selon différents critères: la **disponibilité**, la **tolérance au partitionnement** et la **consistence**. Chacun des systèmes existants sont généralement très forts sur 2 de ces critères, mais moins bons sur le 3e.

Pour chacun des éléments ci-dessous:

Options |
:---: | ---
RDBMSs (MySQL, PostgreSQL, etc.)  ·  Hypertable  ·  MongoDB  ·  Cassandra  ·  Voltemort  ·  BigTable  ·  Greenplum  ·  KAI  ·  Hbase  ·  Berkeley DB  ·  SimpleDB  ·  CouchDB  ·  Terrastore  ·  Redis |

Triez ces éléments selon les 2 critères qui représentent le mieux leur force, en complétant le tableau suivant:

Groupe CD (consistence et disponibilité) | Groupe DP (disponibilité et tolérance aux partitions) | Groupe CP (consistence et tolérance aux partitions)
--- | --- | ---
Aster Data | Riak | Scalaris
Vertica | Dynamo | MemcacheDB
RDBMSs | Voldemort | BigTable
Greenplum | KAI | HyperTable
  | Cassandra | HBase
  | SimpleDB | MongoDB
  | CouchDB | Terrastore
  |   | Berkeley DB
  |   | Redis