-- Create a new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = 'KAYLINS_FAVOURITE_MOVIES'
)

-- Create a new database called 'KAYLINS FAVOURITE MOVIES'
CREATE DATABASE KAYLINS_FAVOURITE_MOVIES;

-- Create table named Movies is created with the following columns: ID, TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING
CREATE TABLE MOVIES
(
    MOVIE_ID SERIAL PRIMARY KEY,
    TITLE TEXT NOT NULL,
    YEAR INT,
    GENRE TEXT,
    ACTORS TEXT,
    DIRECTOR TEXT,
    RATING INT,
);

-- Movies are added to the table with the following information:
INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Dead Poets Society', 1989, 'Drama', 'Peter Weir', 8);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('The Dark Knight', 2008, 'Action', 'Christopher Nolan', 9);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Batman Begins', 2005, 'Action', 'Christopher Nolan', 8);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Pulp Fiction', 1994, 'Crime', 'Quentin Tarantino', 9);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Star Wars: Episode III - Revenge of the Sith', 2005, 'Action', 'George Lucas', 7);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('The Silence of the Lambs', 1991, 'Crime', 'Jonathan Demme', 8);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Back to the Future', 1985, 'Adventure', 'Robert Zemeckis', 8);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Luca', 2021, 'Animation', 'Enrico Casarosa', 8);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('The Incredibles', 2004, 'Animation', 'Brad Bird', 8);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Finding Nemo', 2003, 'Animation', 'Andrew Stanton', 8);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Bambi', 1942, 'Animation', 'David Hand', 7);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('X-Men', 2000, 'Action', 'Bryan Singer', 7);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Moonrise Kingdom', 2012, 'Comedy', 'Wes Anderson', 8);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Spider-man', 2002, 'Action', 'Sam Raimi', 7);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Spirited Away', 2001, 'Animation', 'Hayao Miyazaki', 8);

INSERT INTO movies (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Only Yesterday', 1991, 'Animation', 'Isao Takahata', 7);

INSERT INTO MOVIES (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('The Graduate', 1967, 'Drama', 'Mike Nichols', 8);

INSERT INTO MOVIES (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('A Space Odyssey', 1968, 'Sci-Fi', 'Stanley Kubrick', 8);

INSERT INTO MOVIES (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Juno', 2007, 'Comedy', 'Jason Reitman', 7);

INSERT INTO MOVIES (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Interstellar', 2014, 'Sci-Fi', 'Christopher Nolan', 8);

INSERT INTO MOVIES (TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING)
VALUES ('Inception', 2010, 'Sci-Fi', 'Christopher Nolan', 8);

-- Create able named Age with the following columns: ID, AGE
CREATE TABLE AGE
(
    MOVIE_ID SERIAL PRIMARY KEY,
    AGE TEXT,
);

-- Age ratings are added to the table with the following information:
INSERT INTO AGE VALUES ('G');
INSERT INTO AGE VALUES ('PG');
INSERT INTO AGE VALUES ('PG-13');
INSERT INTO AGE VALUES ('R');

-- Create table named Movies is created with the following columns: ID, TITLE, YEAR, GENRE, ACTORS, DIRECTOR, RATING
ALTER TABLE MOVIES 
ADD AGE INTEGER NULL REFERENCES AGE (MOVIE_ID);

-- Age ratings are added to the table with the following information:
UPDATE MOVIES SET AGE_ID = 1 WHERE MOVIE_ID IN (10, 11, 18);
UPDATE MOVIES SET AGE_ID = 2 WHERE MOVIE_ID IN (1, 7, 8, 9, 15, 16, 17);
UPDATE MOVIES SET AGE_ID = 3 WHERE MOVIE_ID IN (2, 3, 5, 12, 13, 14, 19, 20, 21);
UPDATE MOVIES SET AGE_ID = 4 WHERE MOVIE_ID IN (4, 6);

SELECT * 
FROM MOVIES 
JOIN AGE ON MOVIES.AGE_ID = AGE.ID;

SELECT * FROM MOVIES;