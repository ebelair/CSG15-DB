# CSGames 2015 - Database - Theorical

When working in databases, we generally don't like theorical questions, especially when we don't have access to the Internet to solve them. However, since you only have one computer for 2 people, we need to keep one busy while the other is writing SQL queries.

Solve these questions using the best of your knowledge.

## Section 1 - History

### Question 1.1
In which year was invented the SQL language?
- [ ] 1971
- [x] 1974
- [ ] 1977
- [ ] 1980

--
### Question 1.2
Which company was the very first to develop a RDBMS using the SQL language?
- [x] IBM
- [ ] Microsoft
- [ ] Oracle
- [ ] Sybase

--
### Question 1.3
Who invented the Oracle RDBMS?
- [ ] Bjarne Stroustrup
- [ ] Edgar F. Codd
- [ ] George J. Laurer
- [x] Larry Ellison

--
### Question 1.4
In which year did the first version of MySQL appear on the market?
- [ ] 1990
- [ ] 1993
- [x] 1995
- [ ] 1998

--
### Question 1.5
Quelle est l'origine de PostgreSQL?
What's the origin of PostgreSQL?
- [x] It began as a research project in some university
- [ ] It was developed by a hobbyist, and was then propulsed by the *open-source* community
- [ ] It was developed by a non-profit company created specifically for the project
- [ ] It was developed by a commercial company, which then decided to *open-source* it

--
### Question 1.6
When was the term **NoSQL** first introduced?
- [x] Before 2000
- [ ] Between 2000 and 2005
- [ ] Between 2005 and 2010
- [ ] Between 2010 and 2015

--
### Question 1.7
What were the 3 principal motivations behind the development of NoSQL databases?
- [x] Design simplicity
- [ ] Easiness to install and deploy
- [x] Ability to scale easily
- [x] More control over data availability
- [ ] More control over data relationship
- [ ] Removal of the SQL language usage

--
### Question 1.8
Which NoSQL-type database is the most widely used, in 2015?
- [ ] Cassandra
- [ ] CouchDB
- [x] MongoDB
- [ ] Redis

--
### Question 1.9
Which SQL-type database is the most widely used, in 2015?
- [ ] Microsoft Access
- [ ] Microsoft SQL Server
- [ ] MySQL
- [x] Oracle
- [ ] SQLite

--
### Question 1.10
What does the SQL acronym means?
- [ ] Sequential Query Language
- [ ] Standard Query Language
- [x] Structured Query Language
- [ ] Symbolic Query Language

## Section 2 - Basic features

### Question 2.1
Which of the following components isn't part of a regular database?
- [ ] User data
- [ ] Metadata
- [x] Reports
- [ ] Indexes

--
### Question 2.2
What is a primary key selected from?
- [x] Candidate key
- [ ] Composite key
- [ ] Foreign key
- [ ] Determinant

--
### Question 2.3
What creates a relationship between database components?
- [ ] Candidate key
- [ ] Composite key
- [x] Foreign key
- [ ] Determinant

--
### Question 2.4
What is a tuple?
- [ ] Key of a table
- [ ] Column of a table
- [x] Row of a table
- [ ] Two dimensional table

--
### Question 2.5
In a *1-N* relationship, how is called the entity that is on the *1* side of the relationship?
- [x] Parent
- [ ] Child
- [ ] Instance
- [ ] Type
- [ ] Subtype

--
### Question 2.6
In a *1:N* relationship, the foreign key is placed in which table?
- [ ] The tables on both side of the relationship
- [ ] The table on the *1* side of the relationship
- [x] The table on the *N* side of the relationship
- [ ] A table on any side of the relationship
- [ ] A table specific for foreign key records

--
### Question 2.7
For what purposes are views used?
- [ ] To hide specific columns
- [ ] To hide specific rows
- [ ] To hide complicated SQL statements
- [x] All of the above

--
### Question 2.8
Views constructed from SQL SELECT statements that conform to the SQL-92 standard may **not** contain which of the following:
- [ ] FROM
- [ ] WHERE
- [ ] GROUP BY
- [x] ORDER BY

--
### Question 2.9
Which of the following attributes must be assigned to a primary key?
- [ ] AUTO_INCREMENT
- [ ] COLLATE
- [ ] DEFAULT
- [x] NOT NULL

--
### Question 2.10
What type of join is needed when you wish to include rows that do not have matching values?
- [ ] Equi-join
- [ ] Natural join
- [x] Outer join
- [ ] Self join
- [ ] Cross join
- [ ] Any of the above

## Section 3 - Advanced features

### Question 3.1
What is data scrubbing?

- [ ] A process to reject data from the data warehouse and to create the necessary indexes
- [ ] A process to load the data in the data warehouse and to create the necessary indexes
- [ ] A process to upgrade the quality of data after it is moved into a data warehouse
- [x] A process to upgrade the quality of data before it is moved into a data warehouse

--
### Question 3.2
What can data mining be used for?

- [x] To explain some observed event or condition
- [ ] To confirm that data exists
- [ ] To analyze data for expected relationships
- [ ] To create a new data warehouse

--
### Question 3.3
Data transformation generally includes which of the following?

- [x] A process to change data from a detailed level to a summary level
- [ ] A process to change data from a summary level to a detailed level
- [ ] Joining data from one source into various sources of data
- [ ] Separating data from one source into various sources of data

--
### Question 3.4
Transient data is which of the following?

- [x] Data in which changes to existing records cause the previous version of the records to be eliminated
- [ ] Data in which changes to existing records do not cause the previous version of the records to be eliminated
- [ ] Data that are never altered or deleted once they have been added
- [ ] Data that are never deleted once they have been added

--
### Question 3.5
A distributed database can use which of the following strategies?

- [ ] Totally centralized at one location and accessed by many sites
- [ ] Partially or totally replicated across sites
- [ ] Partitioned into segments at different sites
- [x] All of the above

# Section 4 - Systems

Database systems are often sorted using 3 criteria: **availability**, **partition tolerance** and **consistency**. Each existing system is generally really good on 2 of these criteria, but less ideal for the 3rd.

For each of the following elements:

Options |
:---: | ---
RDBMSs (MySQL, PostgreSQL, etc.)  ·  Hypertable  ·  MongoDB  ·  Cassandra  ·  Voltemort  ·  BigTable  ·  Greenplum  ·  KAI  ·  Hbase  ·  Berkeley DB  ·  SimpleDB  ·  CouchDB  ·  Terrastore  ·  Redis |

Order these elements by matching them with the 2 criteria that describes them the most, by completing the table below:

CA Group (consistency and availability) | AP Group (availability and partition tolerance) | CP Group (consistency and partition tolerance)
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