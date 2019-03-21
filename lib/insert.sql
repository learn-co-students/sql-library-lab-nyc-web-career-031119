
INSERT INTO authors
VALUES (1, "George R.R. Martin"), (2, "J.K. Rowling");

INSERT INTO subgenres
VALUES (1, "wizards and shit"), (2, "dragons and murder");

INSERT INTO series
VALUES (1, "Song of Ice and Fire", 1 , 2), (2, "Harry Potter", 2, 1);

INSERT INTO books
VALUES (1, "A Game of Thrones", 1996, 1), (2, "A Clash of Kings", 1998, 1), (3, "A Storm of Swords", 2000, 1), (4, "The Sorcerors Stone", 1997, 2),(5, "The Chamber of Secrets", 1998, 2), (6, "The Prisoner of Azkaban", 1999, 2);

INSERT INTO characters
VALUES (1, "Eddard Stark", "I sure like having my head attached to my body.", "Human", 1,1), (2, "Sandor Clegane", "CLEGANEBOWL GET HYPE", "Human", 1,1), (3, "Drogon", "eat more goats", "Dragon", 1, 1),(4,"Cersei", "Watch how unlikable I can be", "Demon spawn", 1, 1), (5, "Harry Potter", "My scar hurts", "Human", 2, 2), (6,"Hermoine Granger", "It's LeviosAH NOT LeviosUH!", "Human", 2, 2), (7, "Scabbers", "I'm definitely just a normal rat", "Rat", 2, 2), (8, "Voldemort", "You guys like murder?", "Snakeperson", 2, 2);

INSERT INTO character_books
VALUES (1,1,1),(2,4,1),(3,4,2),(4,2,2),(5,3,2),(6,3,3), (7,2,3),(8,4,3),(9,5,4),(10,5,5),(11,5,6),(12,8,5),(13,6,5),(14,7,4),(15,6,6),(16,6,4);

UPDATE characters
SET species = "Martian"
WHERE id = 8;
