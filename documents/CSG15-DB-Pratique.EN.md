# CSGames 2015 - Database - Practical

You are on a family fishing trip in a small village, isolated from everything else in the world. Your brother-in-law, who has great knowledge of music, keeps telling you random music facts, so much that you start wondering if he really know what he's talking about. Since you don't have access to the Internet, you can't validate his statements, but you remember having downloaded an archive of the *MusicBrainz* database a couple of days before leaving for the trip. This database, one of the biggest *open-source* knowledge base of the musical industry, is installed on your laptop in a local instance of PostgreSQL

Using your great knowledge of SQL, you roll up your sleeves and start validating (or invalidating) each of your brother-in-law statements, while also improving the musical culture of your entire family at the same time.

> **Note:** To avoid defining the `search_path` before each query, you can run the following command one single time on your local instance:
> 
> `ALTER USER [db_username] SET search_path TO musicbrainz;`


## Question 1
Your brother-in-law says that "Stand By Me" is the song with the most covers by different artists, of all time.

List the names of every different artist who have produced a recording called `Stand By Me`, in alphabetical order.

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
Your brother-in-law pretends that "Stairway to Heaven" is the song that has been recorded in the greatest number of different versions by its original music band.

Find the total number of different recordings of the song `Stairway to Heaven` made by the popular rock band `Led Zeppelin`.

count | 
:---:|-
*???* |


## Question 3
Your brother-in-law, big fan of the new song "Happy", pretends to know the name of every album that his writer has recorded until now in his career.

List every album recorded by the American hip-hop singer `Pharrell Williams`, in alphabetical order of album name.

> **Note:** Only keep the smallest album ID for albums with identical name.

release_id | release_name | artist
---|---|---
186242|Can I Have It Like That?|Pharrell Williams
522403|Frontin'|Pharrell Williams
1391420|Girl|Pharrell Williams
1385565|Happy|Pharrell Williams
1503372|Marilyn Monroe|Pharrell Williams
1463667|Out Of My Mind|Pharrell Williams

## Question 4
A bit dyslexic, your brother-in-law tends to make lots of mistakes when writing the names of his favorite signers. He pretends however that the musical industry is so big that no matter how he writes their name, he will always be able to find the artists he's searching for.

List every recognized alias for the signers `Elton John` and `Stevie Wonder`, in respective alphabetical order.

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

In his recent trip to Australia, your brother-in-law bought every album of the popular American rock band Aerosmith. He tells you that some publications in this country were different from other regions of the world.

List every album of the group `Aerosmith`, published specifically for `Australia`, sorted in alphabetical order.

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

Also a big fan of classic rock, your brother-in-law says that the group who have brought us "Suite Madame Blue" and "Mr. Roboto" has recorded 4 albums with another label before officially signing with A&M Records.

List every **complete album** recorded by the American rock band `Styx` on their very fist label, `Wooden Nickel`, sorted in ascending chronological order.

> **Note:** Only keep one album for every `release_group`. Here again, keep only the smallest album ID.

release_id|album|artist|release_year|label
---|---|---|---|---
95691|Styx|Styx|1972|Wooden Nickel
95693|Styx II|Styx|1973|Wooden Nickel
139553|The Serpent Is Rising|Styx|1974|Wooden Nickel
95697|Man of Miracles|Styx|1974|Wooden Nickel

## Question 7

Your brother-in-law really enjoyed catalogs when he was young, and pretends that the "Columbia Record Club" is the label that has published the **best artists**, indisputably.

Name every artist who have published an album under the label commonly referred to as `Columbia Record Club`, in alphabetical order.

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

Also a *moondance* expert, your brother-in-law remembers the entire list of songs on the album Thriller by Michael Jackson in its original version.

List every track on the album `Thriller` by `Michael Jackson` on its `12" Vinyl` format, sorted by their position on the album. Indicate the total number of tracks on the album while displaying the position (`# / total`), as shown below.

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

From "Welcome to Paradise" to "American Idiot", your brother-in-law knows every song of this punk rock band from the west coast of the United States. He says he owns their entire original discography and claim he even recite their album list, from the first to the last published.

List every original album published by `Green Day`, sorted in ascending chronological order.

> **Note:** Only include **complete** (excluding singles, EPs, etc.) and **original albums** (excluding live albums, compilations, etc.), and keep only **one record** for each distinct album.

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

Recently, your brother-in-law went to a Billy Talent show, and following this great experience, he bought their entire discography and now pretends to know all their songs by heart.

Display the complete original discography of the Canadian alternative band `Billy Talent`. List every song published on each of their albums, sorted in ascending chronological order of release date, and in ascending order of their track position.

> **Note:** This question directly relates to questions 8 and 9. You need to use the same presentation as question 8 (with line numbers and position `# / total`), and filter albums in the same way that question 9 (**excluding** singles, EPs, live, compilations, etc).

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

Obviously a great collector, your brother-in-law recently bought a box-set containing an impressing number of different medium formats. He pretends that this box-set is the album that has been released in the greatest number of different medium formats ever.

### Question 11.1

Find the album that has been released in the greatest number of **different medium formats**, on an international level (hint: use area name `[Worldwide]`).

release_id | album | artist | different_formats
:---: | :---: | :---: | :---:
*?*|*?*|*?*|*?*

### Question 11.2

List all the medium formats associated to the album found at question **11.1**.

> **Note:** You can directly use the `release.id` value from **11.1** in your query, to avoid incorporating the previous query in the new one.

id | name
--- | ---
2|DVD
...|...
31|12" Vinyl

## Question 12

Being a great speaker, your brother-in-law really love languages. He even says that some artists have published albums in more than 10 different languages.

### Question 12.1

Find every artist who have published albums in **more than 10 different languages**.

> **Note:** Exclude `Various Artists` and every artist whose name is written inside brackets `[]`.

artist_credit_id | artist | different_languages
:---: | :---: | :---:
*???*|*???*|17
...|...|...
*???*|*???*|12

### Question 12.2

Find the 3 languages for which the most albums have been published.

language|published_releases
---|:---:
English|981709
Japanese|77762
German|40488

## Question 13

Since his music collection is practically infinite, your brother-in-law has often transferred music from physical albums to his computer to keep them in a digital format. On many occasions, he contributed to a music albums metadata knowledge base, by entering the title of every tracks of an album. He says that he found some very particular cases while doing so.

Find the album for which the last tracks begins **the farthest** on the disk, according to its `cdtoc` (i.e. the row with the greatest last `offset`).

artist_id | artist | release_id | album | medium_id
:---: | :---: | :---: | :---: | :---:
*???*|*???*|*???*|*???*|*???*

## Question 14

Your brother-in-law pretends that the average length of a music album is 40 minutes.

Find the average total length of every album in the *MusicBrainz* database (convert to minutes and round at 2 decimals).

> **Note:** Calculate the total length of an album by adding up the length of each of its track.

avg_length |
:---: | ---
##.## |

## Question 15

Also an occasional jazz adept, your brother-in-law generally goes to the Festival de Jazz de Montréal every year. He says he attended many live recordings, and that a couple of those have been published to albums.

Find every song that have been recorded during a *Festival de Jazz de Montréal*, in alphabetical order of song name.

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

With all the things he enjoys, your brother-in-law obviously couldn't miss out on the famous English group Pink Floyd. He says he visited the studio where their internationally-successful album "The Dark Side of the Moon" has been recorded.

Find the studio where the album `The Dark Side of the Moon` by `Pink Floyd` has been recorded. Display the complete adresse, including its street adress, district, borough, city and country, as shown below.

artist | album | studio | address | district | borough | city | country
--- | --- | --- | --- | --- | --- | --- | ---
Pink Floyd|The Dark Side of the Moon|Abbey Road Studios|3 Abbey Road|St John's Wood|Westminster|London|England

## Question 17

From the time where he bought lots of music earlier in his life, your brother-in-law is convinced that "Epic" was the label that published the most albums every month.

Find the label with the greatest monthly average of released albums between 1995 and 2004, inclusively.

> **Note:** Round at 2 decimals.

label_id | label_name | average
:---: | :---: | :---:
*???*|*???*|##.##

## Question 18

Your brother-in-law noticed that more and more albums are produced in vinyl again since a couple of years, and he's convinced that the recent growth has been significant enough to be identified by statistics.

Calculate the ratio between the number of albums produced on 12" vinyls and the number of albums produced on CDs, for every year from 2014 back to 1960.

> **Note:** Be careful, the *release date* is associated with the original release date of an album, while a *medium* may have been released a couple of years later for that same production. Hence, it's normal that you see CDs released in the 60s; they are just reissues, and it's ok to include them.

published_vinyls | published_cds | ratio | year
:---: | :---: | :---: | :---:
839|5802|0.14|2014
1450|9300|0.16|2013
...|...|...|...
269|13|20.69|1961
236|19|12.42|1960

## Question 19

Each morning, your brother-in-law sings the very enjoyable lyrics of the popular song "Never Gonna Give You Up". He says this song is so widely known that you can refer to it by simply mentioning its singer's name. He also says that it has been covered by lots of artists, from anywhere in the world.

Find every artist that recorded a song that can be associated to the original work identified as a `Rick Astley song` in its comments. For each of these artists, also specify their originating country (if known; otherwise, simply write `-- unknown --` in the column).


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

Now that you've contradicted him on many of his statements, your brother-in-law is a bit frustrated and tries to put his database knowledge into practice to restore the dignity he has lost in the process.

He wants to know how you've managed to obtain all these results in such a short amount of time, so he asks you to list every index present in the `musicbrainz` database, and to indicate to which table and which column they're associated to.

table_name | index_name | column_name
--- | --- | ---
annotation|annotation_pkey|id
application|application_idx_oauth_id|oauth_id
application|application_idx_owner|owner
application|application_pkey|id
...|...|...
work_type|work_type_pkey|id
