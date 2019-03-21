UPDATE characters
SET species = "Martian"
WHERE id=(SELECT COUNT(id) FROM characters);
