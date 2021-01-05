Tables for the Assignment:

Create the following tables in a database named "roster". Make sure that your database and tables are named exactly as follows including matching case.

CREATE DATABASE roster;
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS `User`;
DROP TABLE IF EXISTS Course;

CREATE TABLE `User` (
    user_id     INTEGER NOT NULL AUTO_INCREMENT,
    name        VARCHAR(128) UNIQUE,
    PRIMARY KEY(user_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Course (
    course_id     INTEGER NOT NULL AUTO_INCREMENT,
    title         VARCHAR(128) UNIQUE,
    PRIMARY KEY(course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Member (
    user_id       INTEGER,
    course_id     INTEGER,
    role          INTEGER,

    CONSTRAINT FOREIGN KEY (user_id) REFERENCES `User` (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (course_id) REFERENCES Course (course_id)
       ON DELETE CASCADE ON UPDATE CASCADE,

    PRIMARY KEY (user_id, course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

Note that we need to surround User with back-quotes (i.e. `User` because it is a keyword in later versions of MySQL.

Course Data:

You will normalize the following data (each user gets different data), and insert the following data items into your database, creating and linking all the foreign keys properly. Encode instructor with a role of 1 and a learner with a role of 0.

Leoni, si106, Instructor
Cherry, si106, Learner
Lakshya, si106, Learner
Luk, si106, Learner
Saphyre, si106, Learner
Madelyn, si110, Instructor
Hania, si110, Learner
Hannah, si110, Learner
Kyran, si110, Learner
Orlaith, si110, Learner
Ruairi, si206, Instructor
Arwen, si206, Learner
Eidhan, si206, Learner
Latifa, si206, Learner
Lilli, si206, Learner

You can test to see if your data has been entered properly with the following SQL statement.

SELECT `User`.name, Course.title, Member.role
    FROM `User` JOIN Member JOIN Course
    ON `User`.user_id = Member.user_id AND Member.course_id = Course.course_id
    ORDER BY Course.title, Member.role DESC, `User`.name
The order of the data and number of rows that comes back from this query should be the same as above. There should be no missing or extra data in your query.


What Turn In:

When you have the data all inserted, use phpMyAdmin to Export the data as follows:

Select the database (do not select a table within the database)
Select the Export Tab
Select "Custom - display all possible options"
Select "Save output to a file"
Set the format to JSON
Do not select "pretty print" the output
Leave everything else as default and run the export.
The output will be on a file named "roster.json"
