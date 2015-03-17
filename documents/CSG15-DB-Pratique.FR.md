# CSGames 2015 - Database - Pratique

Vous allez en voyage de pêche en famille dans un village reclu de tout accès au monde extérieur. Votre beau-frère, grand connaisseur de musique, vous partage sans cesse des faits musicaux, si bien que vous commencez à douter de la véracité de ses propos. N'ayant pas accès à l'Internet, il est impossible pour vous de valider  ces faits, mais vous vous rappelez avoir récupéré une archive de la base de données *MusicBrainz* avant de partir en voyage. Cette base de données, la plus grande source de connaissances musicales *open-source* existante, est installée sur votre ordinateur portable dans une instance locale de PostgreSQL.

À l'aide de vos grandes connaissances en SQL, vous vous mettez la main à la tâche pour confirmer (ou infirmer) chacun des propos de votre beau-frère, tout en vous permettant d'améliorer la culture musicale de toute votre famille par le fait même.

> **Note:** Pour ne pas avoir à définir le `search_path` avant chaque requête, exécutez la commande suivante une seule fois sur votre instance locale:
> 
> `ALTER USER [db_username] SET search_path TO musicbrainz;`


## Question 1
Votre beau-frère mentionne "Stand By Me" est la chanson populaire qui a été reprise par le plus d'artistes différents, de tous les temps.

Listez le nom de chacun des différents artistes qui ont produit un enregistrement appelé `Stand By Me`, triés par ordre alphabétique.

artist | 
---|-
4 the Cause |
ACM Gospel Choir | 
Andrew Chae |
Annie Villeneuve |
Atomic Rooster |
Bako |
Banda XXI |
*...* | 



## Question 2
Votre beau-frère prétend que "Stairway to Heaven" est la chanson qui a été enregistrée dans le plus de versions différentes par son groupe de musique d'origine.

Donnez le nombre total de versions différentes de la chanson `Stairway to Heaven` qui ont été enregistrées par le groupe `Led Zeppelin`.

count | 
:---:|-
*???* |


## Question 3
Votre beau-frère, grand fan de la chanson "Happy", prétent connaître le nom de chacun des albums que son auteur a enregistré jusqu'à maintenant dans sa carrière.

Listez chacun des albums enregistrés par le chanteur hip-hop américain `Pharrell Williams`, en ordre alphabétique du nom d'album.

> **Note:** Ne conservez que l'identifiant d'album le plus petit pour les noms d'albums identiques.

release_id | release_name | artist
---|---|---
186242|Can I Have It Like That?|Pharrell Williams
522403|Frontin'|Pharrell Williams
1391420|Girl|Pharrell Williams
1385565|Happy|Pharrell Williams
1503372|Marilyn Monroe|Pharrell Williams
1463667|Out Of My Mind|Pharrell Williams

## Question 4
Un peu dyslexique, votre beau-frère a tendance à écrire un peu n'importe comment le nom de ses chanteurs préférés. Il prétend toutefois que l'industrie de la musique est si grande que peu importe l'orthographe qu'il emploie, il restera toujours en mesure de retrouver les artistes qu'il recherche.

Listez tous les surnoms alternatifs enregistrés pour `Elton John` et `Stevie Wonder`, en ordre alphabétique respectif.

artist_name | alias
--- | ---
Elton John|E. John
Elton John|Elthon John
Elton John|Elton Jphn
Elton John|John Elton
Elton John|John, Elton
Elton John|Reginald Kenneth Dwight
Elton John|Sir Elton Hercules John
Elton John|Sir Elton John
Stevie Wonder|Little Stevie Wonder
Stevie Wonder|Steevie Wonder
Stevie Wonder|Steve Wonder
Stevie Wonder|Strvie Wonder
Stevie Wonder|Wonder
Stevie Wonder|Wonder, Stevie
Stevie Wonder|Стиви Уандер
Stevie Wonder|スティーヴィー・ワンダー

## Question 5

Lors de son récent voyage en Australie, votre beau-frère s'est procuré tous les albums du populaire groupe rock américain Aerosmith. Il vous mentionne que certaines publications dans ce pays étaient différentes des autres régions du monde.

Listez chacun des albums du groupe rock américain `Aerosmith` publiés spécifiquement pour l'`Australia`, triés par ordre alphabétique de nom de l'album.

release_id | album | artist | release_year | country
--- | --- | --- | --- | ---
501945|Collections|Aerosmith|2007|Australia
1479734|Gems|Aerosmith|1988|Australia
1062006|Get a Grip|Aerosmith|1993|Australia
1103823|Greatest Hits|Aerosmith|2007|Australia
777594|I Don't Want to Miss a Thing|Aerosmith|1998|Australia
1085873|Rocks|Aerosmith|1988|Australia
1479743|The Best of Aerosmith|Aerosmith|1988|Australia

## Question 6

Aussi grand fan du rock classique, votre beau-frère mentionne que le groupe à l'origine des célèbres tubes "Suite Madame Blue" et "Mr. Roboto" a enregistré 4 albums avec un autre label avant de signer officiellement avec A&M Records.

Listez tous les **albums complets** du groupe rock américain `Styx` enregistrés sous leur premier label, `Wooden Nickel`, triés en ordre croissant de date de sortie.

> **Note:** Ne conservez qu'un seul album par `release_group`. Encore ici, ne conservant que l'identifiant d'album le plus petit.

release_id|album|artist|release_year|label
---|---|---|---|---
95691|Styx|Styx|1972|Wooden Nickel
95693|Styx II|Styx|1973|Wooden Nickel
139553|The Serpent Is Rising|Styx|1974|Wooden Nickel
95697|Man of Miracles|Styx|1974|Wooden Nickel

## Question 7

Votre beau-frère appréciait beaucoup les catalogues dans son jeune âge et prétend que le "Columbia Record Club" est le label qui a publié les **meilleurs artistes**, point final.

Nommez tous les artistes qui ont déjà publié un album sous le label possédant le surnom `Columbia Record Club`, triés en ordre alphabétique croissant.

artist_credit_id | artist_credit_name
--- | ---
23032|54-40
481|Aerosmith
1935|Alannah Myles
1735|Bad Company
49627|Beyoncé
138|Billy Joel
2157|Billy Squier
1022|Björk
305|Blind Melon
386|Blue Rodeo
...|...

## Question 8

Un expert du *moondance*, votre beau-frère indique connaître par coeur la liste de chansons de l'album Thriller de Michael Jackson en sa version originale.

Pour le valider, listez toutes les pistes de l'album `Thriller` de `Michael Jackson` au format `12" Vinyl`, triées en ordre croissant de leur position. Incluez le nombre total de pistes de l'album dans l'affichage de la position (`# / total`), comme présenté ci-bas.

num|title|artist|position|album|release_year
---|---|---|:---:|---|---
1|Wanna Be Startin’ Somethin’|Michael Jackson|1 / 9|Thriller|1982
2|Baby Be Mine|Michael Jackson|2 / 9|Thriller|1982
3|The Girl Is Mine|Michael Jackson|3 / 9|Thriller|1982
4|Thriller|Michael Jackson|4 / 9|Thriller|1982
5|Beat It|Michael Jackson|5 / 9|Thriller|1982
6|Billie Jean|Michael Jackson|6 / 9|Thriller|1982
7|Human Nature|Michael Jackson|7 / 9|Thriller|1982
8|P.Y.T. (Pretty Young Thing)|Michael Jackson|8 / 9|Thriller|1982
9|The Lady in My Life|Michael Jackson|9 / 9|Thriller|1982

## Question 9

De "Welcome to Paradise" à "American Idiot", votre beau-frère connaît toutes les chansons de ce groupe de punk rock du sud-ouest des États-Unis. Il indique posséder toute leur discographie originale, qu'il trie même en ordre de leur date de sortie.

Listez tous les albums de `Green Day`, triés en ordre croissant de date de sortie. 

> **Note:** N'affichez que les **albums complets** (en excluant les singles, EPs, etc.) et **originaux** (en excluant les albums live, les compilations, etc.), puis ne conservez qu'**une seule ligne** pour chaque album distinct.

artist | album | release_year
--- | --- | ---
Green Day|39/Smooth|1990
Green Day|Kerplunk!|1992
Green Day|Dookie|1994
Green Day|Insomniac|1995
Green Day|Nimrod|1997
Green Day|Warning:|2000
Green Day|American Idiot|2004
Green Day|21st Century Breakdown|2009
Green Day|¡Uno!|2012
Green Day|¡Dos!|2012
Green Day|¡Tré!|2012

## Question 10

Récemment, votre beau-frère a assisté a un spectacle du groupe de punk rock canadien Billy Talent. Suite à son expérience fulgurante, il s'est procuré leur discographie complète et prétend connaître par coeur toutes leurs chansons, dans l'ordre de leur sortie.

Montrez la discographie originale complète du groupe `Billy Talent`. Listez chacune des chansons qui ont été publiées sur chacun de leurs albums, triées en ordre ascendant de la date de sortie de l'album, puis de la position de piste sur l'album.

> **Note:** Cette question s'inspire directement des questions 8 et 9. Vous devez donc utiliser la même présentation par colonne qu'à la question 8 (avec le numéro de ligne et la piste `# / total`), puis filtrer les albums de la même façon qu'à la question 9 (**excluant** les singles, EPs, compilations, etc).

title|artist|position|album|release_year
---|---|:---:|---|---
1|This Is How It Goes|Billy Talent|1 / 12|Billy Talent|2003
2|Living in the Shadows|Billy Talent|2 / 12|Billy Talent|2003
3|Try Honesty|Billy Talent|3 / 12|Billy Talent|2003
...|...|...|...|...|...
13|Devil in a Midnight Mass|Billy Talent|1 / 13|Billy Talent II|2006
...|...|...|...|...
26|Devil on My Shoulder|Billy Talent|1 / 11|Billy Talent III|2009
...|...|...|...|...
37|Lonely Road to Absolution|Billy Talent|1 / 14|Dead Silence|2012
...|...|...|...|...
50|Dead Silence|Billy Talent|14 / 14|Dead Silence|2012

## Question 11

Évidemment un grand collectionneur, votre beau-frère s'est récemment procuré un coffret regroupant un nombre impresionnant de médias différents. Il prétend que son coffret est l'album qui a été publié dans le plus de formats différents du monde.

### Question 11.1

Trouvez l'album qui a été publié dans le plus de **formats de média différents**, au niveau international (indice: utilisez le pays `[Worldwide]`).

release_id | album | artist | different_formats
:---: | :---: | :---: | :---:
*?*|*?*|*?*|*?*

### Question 11.2

Listez tous les formats de média associés à l'album trouvé à la question **11.1**.

> **Note:** Vous pouvez utiliser directement la valeur de `release.id` trouvée en **11.1** dans votre requête, pour éviter d'incorporer l'ancienne requête dans la nouvelle.

id | name
--- | ---
2|DVD
...|...
31|12" Vinyl

## Question 12

Grand orateur dans sa nature, votre beau-frère s'intéresse beaucoup aux langues. Il mentionne même que certains artistes ont publié des albums dans plus de 10 langues différentes.

### Question 12.1

Trouvez les artistes qui ont publié des albums dans **plus de 10 langues différentes**.

> **Note:** Excluez les `Various Artists` et tous les artistes qui sont exprimés entre crochets `[]`.

artist_credit_id | artist | different_languages
--- | --- | ---
11285|Wolfgang Amadeus Mozart|17
24465|Antonio Vivaldi|14
36138|Alan Menken|13
1051|Andrew Lloyd Webber|12
2997|Ennio Morricone|12
122653|Пётр Ильич Чайковский|12

### Question 12.2

Trouvez les 3 langues pour lesquelles le plus d'albums ont été publiés.

language|published_releases
---|:---:
English|981709
Japanese|77762
German|40488

## Question 13

Comme il possède une collection presque infinie de disques, votre beau-frère a souvent transféré ses albums physiques sur son ordinateur pour les conserveur au format numérique. À plusieurs reprises, il a contribué aux bases de connaissance de métadonnées liées à un album en entrant le titre de chacune des pistes, notamment. Il mentionne d'ailleurs avoir retrouvé quelques cas spéciaux.

Trouvez l'album dont la dernière piste débute **le plus loin** sur le disque, selon les `cdtoc` (i.e. la ligne dont le dernier `offset` le plus grand).

artist_id | artist | release_id | album | medium_id
--- | --- | --- | --- | ---
1021|Ludwig van Beethoven|819300|The Symphonies (Royal Concertgebouw Orchestra feat. conductor: Eugen Jochum)|819315

## Question 14

Votre beau-frère vous mentionne que la durée moyenne d'un album que l'on peut se procurer sur le marché est de 40 minutes.

Trouvez la durée totale moyenne de tous les albums présents dans la base de données (convertissez en minutes, arrondies à 2 décimales).

> **Note:** Calculez la durée totale d'un album par l'addition de la durée de toutes ses pistes.

avg_length |
:---: | ---
##.## |

## Question 15

Aussi adepte de jazz par occasion, votre beau-frère fréquente annuellement le Festival de Jazz de Montréal. Il mentionne avoir assisté à des enregistrements qui ont ensuite été publiés comme albums.

Trouvez toutes les chansons qui ont été enregistrées lors d'un *Festival de Jazz de Montréal*, par ordre alphabétique du nom de chanson.

track | artist | venue
--- | --- | ---
Bemsha Swing|Charlie Haden, Jim Hall|Festival International de Jazz de Montréal, 1990
Big Blues|Charlie Haden, Jim Hall|Festival International de Jazz de Montréal, 1990
Body and Soul|Charlie Haden, Jim Hall|Festival International de Jazz de Montréal, 1990
Caledonia|Ricky Paquette|Festival International de Jazz de Montréal 2006
Down From Antigua|Charlie Haden, Jim Hall|Festival International de Jazz de Montréal, 1990
Feel Like a King|Ricky Paquette|Festival International de Jazz de Montréal 2006
First Song|Charlie Haden, Jim Hall|Festival International de Jazz de Montréal, 1990
Georgia on My Mind|Ricky Paquette|Festival International de Jazz de Montréal 2006
I'm a Fool|Ricky Paquette|Festival International de Jazz de Montréal 2006
In the Moment|Charlie Haden, Jim Hall|Festival International de Jazz de Montréal, 1990
Leave My Little Girl Alone|Ricky Paquette|Festival International de Jazz de Montréal 2006
School Boy Blues|Ricky Paquette|Festival International de Jazz de Montréal 2006
Skylark|Charlie Haden, Jim Hall|Festival International de Jazz de Montréal, 1990
Statesboro Blues|Ricky Paquette|Festival International de Jazz de Montréal 2006
The Wind Cries Mary|Ricky Paquette|Festival International de Jazz de Montréal 2006
Turnaround|Charlie Haden, Jim Hall|Festival International de Jazz de Montréal, 1990
Woodshed Blues|Ricky Paquette|Festival International de Jazz de Montréal 2006

## Question 16

Avec toutes ses passions, votre beau-frère ne peut évidemment pas être passé à côté du célèbre groupe anglais Pink Floyd. Il mentionne avoir visité le studio dans lequel ils ont enregistré leur album à succès international "The Dark Side of the Moon".

Trouvez dans quel studio a été enregistré l'album `The Dark Side of the Moon` du célèbre groupe `Pink Floyd`. Indiquez son adresse complète, incluant son adresse de rue, son district, son quartier, sa ville et son pays, tel que présenté ci-bas.

artist | album | studio | address | district | borough | city | country
--- | --- | --- | --- | --- | --- | --- | ---
Pink Floyd|The Dark Side of the Moon|Abbey Road Studios|3 Abbey Road|St John's Wood|Westminster|London|England

## Question 17

Dans le temps où il achetait le plus de musique, votre beau-frère est convaincu que "Epic" était le label qui publiait le plus d'albums en un même mois.

Trouvez le label qui a publié la plus grande moyenne d'albums par mois entre 1995 et 2004 (inclusivement).

> **Note:** Arrondissez la moyenne à 2 chiffres après la virgule.

label_id | label_name | average
:---: | :---: | :---:
*???*|*???*|##.##

## Question 18

Votre beau-frère a remarqué que de plus en plus d'albums recommencent à être publiés en vinyle depuis quelques années et est persuadé que la croissance est suffisamment significative pour être identifiée.

Calculez le ratio entre le nombre d'albums produits sur vinyle de 12" et le nombre d'albums produits sur CD, pour chaque année entre 1960 et 2014, par ordre décroissant d'année.

> **Note:** Attention, la *date de sortie* est associée à la date de sortie originale, alors qu'un autre *medium* peut parfois être sorti plusieurs années plus tard pour une même production. C'est donc normal si vous trouvez des CDs sortis dans les années 60; il est attendu de les inclure.


published_vinyls | published_cds | ratio | year
:---: | :---: | :---: | :---:
839|5802|0.14|2014
1450|9300|0.16|2013
...|...|...|...
269|13|20.69|1961
236|19|12.42|1960

## Question 19

Chaque matin, votre beau-frère chante les agréables paroles de la populaire chanson "Never Gonna Give You Up". Il dit que cette chanson est tellement connue qu'elle peut être identifiée instantanément par quiconque qui ne mentionne que son auteur. Il dit aussi qu'elle a été reprise par un très grand nombre d'artistes, de partout à travers le monde.

Trouvez tous les artistes qui ont produit un enregistrement pouvant être associé à l'oeuvre identifiée en commentaire comme une `Rick Astley song`. Pour chacun de ces artistes, indiquez également leur pays d'origine (s'il est connu; sinon, simplement écrire `-- unknown --` dans la colonne).


artist_credit_id | artist_credit_name | recording_name | artist_country
--- | --- | --- | ---
23719|911|Never Gonna Give You Up|United Kingdom
119206|Edsilia Rombley|Never Gonna Give You Up|Netherlands
977787|Erock|Chrono Trigger Meets Metal|-- unknown --
1240199|Jessica Calvello|Never Gonna Give You Up|-- unknown --
299429|Munich Symphonic Sound Orchestra|Never Gonna Give You Up|Germany
76439|Peter and the Test Tube Babies|Never Gonna Give You Up|United Kingdom
648270|Romak and the Space Pirates|Never Gonna Give You Up|United States
994691|Rosso Barocco|Never Gonna Give You Up|-- unknown --
54882|Star Inc.|Never Gonna Give You Up|Netherlands
883983|The GAG Quartet|le Internet Medley|Israel
521421|The Hot Stewards|Never Gonna Give You Up|Netherlands

## Question 20

Maintenant que vous l'avez contratiré sur plusieurs de ses propos, votre beau-frère un peu frustré contre vous et tente de mettre en pratique ses connaissances en base de données restaurer la dignité qu'il a perdu en cours de route.

Il veut savoir comment vous avez fait pour obtenir autant de résultats en une si courte période de temps, il vous demande donc de lister chacun des index présents dans la base de données `musicbrainz`, en indiquant aussi dans quelle table et sur quelle colonne de cette table ils se retrouvent.


table_name | index_name | column_name
--- | --- | ---
annotation|annotation_pkey|id
application|application_idx_oauth_id|oauth_id
application|application_idx_owner|owner
application|application_pkey|id
...|...|...
work_type|work_type_pkey|id
