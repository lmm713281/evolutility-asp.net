/* Movie database   */
/* www.evolutility.org - (c) 2011 Olivier Giulieri  */
/*
	This file is part of Evolutility CRUD Framework.
	Source link <http://www.evolutility.org/download/download.aspx>

	Evolutility is free software: you can redistribute it and/or modify
	it under the terms of the GNU Affero General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	Evolutility is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU Affero General Public License
	along with Evolutility. If not, see <http://www.gnu.org/licenses/>.
*/


CREATE TABLE [Movie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[url] [nvarchar](200) NULL,
	[Pix] [nvarchar](200) NULL,
	[directorID] [int] NULL,
	[MovieYear] [smallint] NULL,
	[genreID] [int] NULL,
	[ratingID] [int] NULL,
	[Duration] [smallint] NULL,
	[LanguageID] [int] NULL,
	[Story] [nvarchar](1200) NULL,
	[Awards] [nvarchar](300) NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [MovieRating](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Abbreviation] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](120) NOT NULL,
	[Description] [nvarchar](300) NULL,
 CONSTRAINT [PK_MovieRating] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [MovieNNActor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MovieID] [int] NULL,
	[ActorID] [int] NULL,
	[Role] [nvarchar](100) NULL,
 CONSTRAINT [PK_MovieNNActor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [MovieLanguage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MovieLanguage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [MovieGenre](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](70) NOT NULL,
 CONSTRAINT [PK_MovieCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [MovieDirector](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[bdate] [datetime] NULL,
	[bio] [nvarchar](500) NULL,
	[photo] [nvarchar](100) NULL,
 CONSTRAINT [PK_MovieDirector] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO 

CREATE TABLE [MovieActor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[bdate] [datetime] NULL,
	[photo] [nvarchar](200) NULL,
	[bio] [nvarchar](500) NULL
) ON [PRIMARY]

GO

/***  Movie ***/

SET IDENTITY_INSERT Movie ON;

INSERT INTO Movie (ID, Title, url, Pix, directorID, MovieYear, genreID, ratingID, Duration, LanguageID, Story, Awards)
  VALUES (1, 'Matrix', '', 'matrix.jpg', 2, 1999, 6, 4, 136, 1, 'In this complex story that aspires to mythology, a computer hacker (Keanu Reeves) searches for the truth behind the mysterious force known as the Matrix. He finds his answer with a group of strangers led by the charismatic Morpheus (Laurence Fishburne). What they encounter in confronting that truth makes for a lightning-paced, eye-popping thrill ride of a movie that cleverly combines sociopolitical commentary with cutting-edge special effects.
', '2000 Academy Award®: Best Visual Effects
2000 Academy Award®: Best Film Editing
2000 Academy Award®: Best Sound Effects Editing
2000 Academy Award®: Best Sound
AFI®: Top 100 Thrills');
INSERT INTO Movie (ID, Title, url, Pix, directorID, MovieYear, genreID, ratingID, Duration, LanguageID, Story, Awards)
  VALUES (2, 'Lord of War ', '', 'lord_of_war.jpg', 4, 2005, 4, 4, 121, 1, 'Lately, Yuri Orlov (Nicolas Cage) has had some misgivings about his day job. As the world''s leading arms dealer, he''s embraced the glamorous profession so soundly that it''s hard to let it go. The thing is, if he wants to dodge the cunning Interpol agent (Ethan Hawke) on his trail, he''ll have to let go. Writer-director Andrew Niccol helms this taut action-thriller co-starring Jared Leto, Bridget Moynahan and Donald Sutherland. 
', ' ');
INSERT INTO Movie (ID, Title, url, Pix, directorID, MovieYear, genreID, ratingID, Duration, LanguageID, Story, Awards)
  VALUES (3, 'The Rock', '', 'rock.jpg', 5, 1996, 1, 4, 136, 1, 'In this pumped-up action thriller, ex-military-man Ed Harris turns to extortion when he captures Alcatraz prison (the Rock) and threatens to blanket San Francisco with nerve gas unless his demands are met. The feds send in a strike force led by chemical-weapons expert Nicolas Cage and Sean Connery (who broke out of Alcatraz 30 years earlier) to regain control and capture Harris.
', '1997 Academy Award®: Best Sound nominee');
INSERT INTO Movie (ID, Title, url, Pix, directorID, MovieYear, genreID, ratingID, Duration, LanguageID, Story, Awards)
  VALUES (4, 'Gattaca', '', 'gattaca.jpg', 4, 1997, 6, 3, 106, 1, 'A young man, born in the 90s, is vulnerable to emotions he''s not supposed to feel in the 21st Century where perfection is made possible by genetic science. Sci-fi thriller about an all-too-human man who dares to defy the system. 
', '1998 Academy Award®: Best Art Direction nominee');
INSERT INTO Movie (ID, Title, url, Pix, directorID, MovieYear, genreID, ratingID, Duration, LanguageID, Story, Awards)
  VALUES (5, 'Matrix Reloaded', '', 'matrix2.jpg', 2, 2003, 6, 4, 138, 1, 'Keanu Reeves, Laurence Fishburne and Carrie-Anne Moss are back in the roles they made famous in the original, special-effects-studded, sci-fi crowd-pleaser The Matrix. After Zion, the last outpost still under human control, is discovered, the battle against the machines that have enslaved people in the Matrix reaches peak intensity -- and Neo (Reeves), Morpheus (Fishburne), Trinity (Moss) and the rest of the gang must soldier on. ', '2004 Razzie® Awards: Worst Director nominee: Andy Wachowski');
INSERT INTO Movie (ID, Title, url, Pix, directorID, MovieYear, genreID, ratingID, Duration, LanguageID, Story, Awards)
  VALUES (6, 'Matrix Revolutions', '', 'matrix3.jpg', 2, 2003, 6, 4, 129, 1, 'The third in a trilogy that started with The Matrix and The Matrix Reloaded, directed by Andy and Larry Wachowski. Superhuman Neo (Keanu Reeves) returns with compatriot and lover Trinity (Carrie-Ann Moss) and Morpheus (Laurence Fishburne) in a plot where most of the action takes place on a "scorched Earth" as the machines invade Zion. Monica Bellucci and Jada Pinkett-Smith co-star.
', '');
INSERT INTO Movie (ID, Title, url, Pix, directorID, MovieYear, genreID, ratingID, Duration, LanguageID, Story, Awards)
  VALUES (7, 'Blade Runner', '', 'bladerunner.jpg', 7, 1982, 6, 4, 117, 1, 'In the smog-choked dystopian Los Angeles of 2019, blade runner Rick Deckard (Harrison Ford) is called out of retirement to snuff a quartet of "replicants" -- androids consigned to slave labor on remote planets. They''ve escaped to Earth seeking their creator and a way to extend their short life spans. In the course of Deckard''s mission, he gets romantically entangled with Rachel (Sean Young) -- a replicant who''s oblivious to her humanoid heredity. 
', '1983 Academy Award®: Best Visual Effects nominee
1983 Academy Award®: Best Art Direction nominee
AFI®: Top 100 Thrills
TIME® Magazine List: All-TIME 100 Movies');
INSERT INTO Movie (ID, Title, url, Pix, directorID, MovieYear, genreID, ratingID, Duration, LanguageID, Story, Awards)
  VALUES (8, 'Gladiator', '', 'gladiator.jpg', 7, 2000, 1, 4, 155, 1, 'Oscar winner Russell Crowe is Maximus, whom Roman emperor Marcus Aurelius (Richard Harris) had picked to succeed him. But Marcus''s son Commodus (Joaquin Phoenix) snatches the throne, ordering Maximus dead. Instead, he''s enslaved and learns to be a skilled fighter. When the Coliseum opens for gladiator games, Maximus finally has the chance for revenge. Ridley Scott directs this vivid epic, winner of the Oscar and Golden Globe for best picture.
', '2001 Academy Award®: Best Actor: Russell Crowe
2001 Academy Award®: Best Picture
2001 Academy Award®: Best Costume Design
2001 Academy Award®: Best Visual Effects
2001 Academy Award®: Best Sound
2001 Academy Award®: Best Music Score nominee
2001 Academy Award®: Best Art Direction
...');

SET IDENTITY_INSERT Movie OFF;


/***  MovieActor ***/

SET IDENTITY_INSERT MovieActor ON;

INSERT INTO MovieActor (ID, name, bdate, photo, bio)
  VALUES (1, 'Keanu Reeves', NULL, 'k_reeves.jpg', '');
INSERT INTO MovieActor (ID, name, bdate, photo, bio)
  VALUES (2, 'Nicolas Cage', NULL, 'n_cage.jpg', '');
INSERT INTO MovieActor (ID, name, bdate, photo, bio)
  VALUES (3, 'Sean Connery', NULL, 's_connery.jpg', '');
INSERT INTO MovieActor (ID, name, bdate, photo, bio)
  VALUES (4, 'Laurence Fishburne', NULL, 'l_fishburne.jpg', '');
INSERT INTO MovieActor (ID, name, bdate, photo, bio)
  VALUES (5, 'Uma Thurman', NULL, 'u_thurman.jpg', '');
INSERT INTO MovieActor (ID, name, bdate, photo, bio)
  VALUES (6, 'Ethan Hawke ', '1970-11-6 12:00:00 AM', 'e_hawke.jpg', '');
INSERT INTO MovieActor (ID, name, bdate, photo, bio)
  VALUES (7, 'Russell Crowe', '1964-4-7 12:00:00 AM', 'r_crowe.jpg', '');

SET IDENTITY_INSERT MovieActor OFF;


/***  MovieDirector ***/

SET IDENTITY_INSERT MovieDirector ON;

INSERT INTO MovieDirector (ID, fullname, bdate, bio, photo)
  VALUES (2, 'Andy & Larry Wachowski', NULL, '', '');
INSERT INTO MovieDirector (ID, fullname, bdate, bio, photo)
  VALUES (4, 'Andrew Niccol', NULL, '', '');
INSERT INTO MovieDirector (ID, fullname, bdate, bio, photo)
  VALUES (5, 'Michael Bay', NULL, '', '');
INSERT INTO MovieDirector (ID, fullname, bdate, bio, photo)
  VALUES (7, 'Ridley Scott', '1937-11-30 12:00:00 AM', '', 'r_scott.jpg');

SET IDENTITY_INSERT MovieDirector OFF;


/*** MovieGenre ***/

SET IDENTITY_INSERT MovieGenre ON;

INSERT INTO MovieGenre (ID, name)
  VALUES (1, 'Action & Adventure');
INSERT INTO MovieGenre (ID, name)
  VALUES (2, 'Anime');
INSERT INTO MovieGenre (ID, name)
  VALUES (3, 'Documentory');
INSERT INTO MovieGenre (ID, name)
  VALUES (4, 'Drama');
INSERT INTO MovieGenre (ID, name)
  VALUES (5, 'Foreign');
INSERT INTO MovieGenre (ID, name)
  VALUES (6, 'Sci-Fi & Fantasy');
INSERT INTO MovieGenre (ID, name)
  VALUES (7, 'Comedie');
INSERT INTO MovieGenre (ID, name)
  VALUES (8, 'Thriller');

SET IDENTITY_INSERT MovieGenre OFF;


/*** MovieLanguage ***/

SET IDENTITY_INSERT MovieLanguage ON;

INSERT INTO MovieLanguage (ID, name)
  VALUES (1, 'English');
INSERT INTO MovieLanguage (ID, name)
  VALUES (2, 'Chinese');
INSERT INTO MovieLanguage (ID, name)
  VALUES (3, 'French');

SET IDENTITY_INSERT MovieLanguage OFF;



/*** MovieNNActor ***/

INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (3, 2, '');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (2, 2, 'Yuri Orlov');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (4, 5, '');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (4, 6, 'Vincent Freeman');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (6, 1, 'Neo');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (6, 4, 'Morpheus');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (3, 3, '');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (2, 6, 'Jack Valentine');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (5, 1, 'Neo');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (5, 4, 'Morpheus');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (8, 7, 'Maximus');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (1, 1, 'Neo');
INSERT INTO MovieNNActor (MovieID, ActorID, Role)
  VALUES (1, 4, 'Morpheus');

/*** MovieRating ***/

SET IDENTITY_INSERT MovieRating ON;

INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (1, 'G', 'GENERAL AUDIENCES', 'All ages admitted.');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (2, 'PG', 'PARENTAL GUIDANCE SUGGESTED', 'Some material may not be suitable for children.');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (3, 'PG-13', 'PARENTS STRONGLY CAUTIONED', '');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (4, 'R', 'RESTRICTED', '');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (5, 'NC-17', 'NO ONE 17 AND UNDER ADMITTED', '');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (6, 'UR', 'UNRATED', '');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (7, 'NR', 'NOT RATED', '');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (8, 'TV Y', 'ALL CHILDREN', '');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (9, 'TV Y7', 'DIRECTED TO OLDER CHILDREN', '');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (10, 'TV Y7 FV', 'DIRECTED TO OLDER CHILDREN - FANTASY VIOLENCE', '');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (11, 'TV G', 'GENERAL AUDIENCE ', '');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (12, 'TV PG', 'PARENTAL GUIDANCE SUGGESTED', '');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (13, 'TV 14', 'PARENTS STRONGLY CAUTIONED', '');
INSERT INTO MovieRating (ID, Abbreviation, Name, Description)
  VALUES (14, 'TV MA', 'MATURE AUDIENCES ONLY', '');

SET IDENTITY_INSERT MovieRating OFF;

GO



