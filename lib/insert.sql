INSERT INTO series (title, author_id, subgenre_id)
VALUES ('hp', 1, 1), ('lotr', 2, 2);
INSERT INTO subgenres (name)
VALUES ('ya'), ('high fantasy');
INSERT INTO authors (name)
VALUES ('rowling'), ('tolkien');
INSERT INTO books (title, year, series_id)
VALUES ('philosphers stone', 1999, 1), ('chamber of secrets', 2001, 1), ('prisoner of azkaban', 2003, 1),
('fellowship of the ring', 1939, 2), ('two towers', 1939, 2), ('return of the king', 1939, 2);
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ('harry', 'Im A wOt?!', 'lived, boy who', 1, 1),
('lupin', 'howl', 'whywolf', 1, 1),
('hermione', '*punches malfoy*', 'smort', 1, 1),
('sirius', '*explains poorly*', 'dog', 1, 1),
('frodo', 'I cant do this alone', 'halfing', 2, 2),
('mithrandir the grey', 'A wozord arrives presizzle when he mizzle', 'maiar', 2, 2),
('aragorn', 'for frodo', 'man, but like old', 2, 2),
('galadriel', 'all shall love me and despair', 'elf', 2, 2);
INSERT INTO character_books (character_id, book_id)
VALUES (1, 1), (1, 2), (1, 3),
(2, 3),
(3, 1), (3, 2), (3, 3),
(4, 3),
(5, 1), (5, 2), (5, 3),
(6, 1),
(7, 1), (7, 2), (7, 3),
(8, 1);
