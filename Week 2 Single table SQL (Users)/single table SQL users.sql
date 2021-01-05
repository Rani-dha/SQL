Instructions:

First, create a MySql database or use an existing database (make sure to use a UTF8 character set) and then create a table in the database called "Ages":

CREATE TABLE Ages ( 
  name VARCHAR(128), 
  age INTEGER
)
Then make sure the table is empty by deleting any rows that you previously inserted, and insert these rows and only these rows with the following commands:

DELETE FROM Ages;
INSERT INTO Ages (name, age) VALUES ('Hasini', 29);
INSERT INTO Ages (name, age) VALUES ('Kaylum', 22);
INSERT INTO Ages (name, age) VALUES ('Neema', 13);
INSERT INTO Ages (name, age) VALUES ('Brandi', 14);

Once the inserts are done, run the following SQL command:
SELECT sha1(CONCAT(name,age)) AS X FROM Ages ORDER BY X

Find the first row in the resulting record set and enter the long string that looks like 254c6127cdbc4c38e065317667340e8b0950046f (this is just a sample string).


Solution: 96141a013bbf1e2eef9a30d18b892fa42bdad242
