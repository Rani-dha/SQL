Create Database roster;

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



INSERT INTO course VALUES(106, "si106"), (110, "si110"), (206, "si206");

INSERT INTO user values(1, "Leoni"), (2, "Cherry"), (3, "Lakshya"), (4, "Luk"), (5, "Saphyre"), (6, "Madelyn"), (7, "Hania"), (8, "Hannah"), (9, "Kyran"), (10, "Orlaith"), (11, "Ruairi"), (12, "Arwen"), (13, "Eidhan"), (14, "Latifa"), (15, "Lilli");

INSERT INTO member VALUES (1, 106, 1);
INSERT INTO member VALUES (2, 106, 0);
INSERT INTO member VALUES (3, 106, 0);
INSERT INTO member VALUES (4, 106, 0);
INSERT INTO member VALUES (5, 106, 0);
INSERT INTO member VALUES (6, 110, 1);
INSERT INTO member VALUES (7, 110, 0);
INSERT INTO member VALUES (8, 110, 0);
INSERT INTO member VALUES (9, 110, 0);
INSERT INTO member VALUES (10, 110, 0);
INSERT INTO member VALUES (11, 206, 1);
INSERT INTO member VALUES (12, 206, 0);
INSERT INTO member VALUES (13, 206, 0);
INSERT INTO member VALUES (14, 206, 0);
INSERT INTO member VALUES (15, 206, 0);

