# CSGames 2015 - Database - MusicBrainz

### Schema

![http://wiki.musicbrainz.org/-/images/5/52/ngs.png](http://wiki.musicbrainz.org/-/images/5/52/ngs.png)

### Description

The MusicBrainz Database is built on the PostgreSQL relational database engine and contains all of MusicBrainz' music metadata. This data includes information about artists, release groups, releases, recordings, works, and labels, as well as the many relationships between them. The database also contains a full history of all the changes that the MusicBrainz community has made to the data.

### Objects

**Artist**  
An artist is generally a musician, group of musicians, a collaboration of multiple musicians or other music professional.

**Artist credit**  
List of artists, variations of artist names and pieces of text to join the artist names. Examples:

- "Queen & David Bowie" -- two artists ("Queen" and "David Bowie"), no name variations, joined with " & "
- "Jean-Michel Jarre" -- one artist ("Jean Michel Jarre"), name variation "Jean-Michel Jarre"
- "Tracy W. Bush, Derek Duke, Jason Hayes and Glenn Stafford" -- four artists, no name variations, joined with commas and an "and".

**Release group**  
Represents an abstract "album" (or "single", or "EP") entity. Technically it's a group of releases, with a specified type. Examples:

- Single "Under Pressure" by "Queen & David Bowie"
- Album "The Wall" by "Pink Floyd"

**Release**  
Real-world release object you can buy in your music store. It has release date and country, list of catalog number and label pairs, packaging type and release status. Examples:

- 1984 US release of "The Wall" by "Pink Floyd", release on label "Columbia Records" with catalog number "C2K 36183" and UPC "074643618328", it's an official release and comes with two CDs in jewel case.

**Medium**  
Piece of media, included in a release. Contains information about the format, position in the release and an optional title, plus a list of tracks. Has attached CD TOCs. Examples:

- CD1 of the 1984 US release of "The Wall" by "Pink Floyd"
- CD2 of the 2005 UK release of "Aerial" by "Kate Bush", named "A Sky of Honey"

**Track**  
This object is not visible to users on its own, only in the context of a release. It has an MBID, and contains a link to a recording, title, artist credit and its position on its medium.

**Recording**  
Represents an unique mix or edit. Has title, artist credit, duration, list of PUIDs and ISRCs. Examples (all are different Recordings):

- Album version of the track "Into the Blue" by "Moby"
- Remix "Into the Blue (Buzz Boys Main Room Mayhem mix)" by "Moby"
- Remix "Into the Blue (Underground mix)" by "Moby"

**Work**  
One layer above recordings ("song", "composition", etc.). While recording represents audio data, work represents the composition behind the recording. Advanced Relationships should be used to link recording and work.

- Song "Into the Blue" by "Moby" -- all the recordings listed above will be linked to this object

**Label**  
- Labels represent mostly (but not only) imprints.

**Area**  
A country, region, city or the like.

**Place**  
A venue, studio or other place where music is performed, recorded, engineered, etc.