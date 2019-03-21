def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  JOIN series
  ON books.series_id = series.id
  WHERE books.series_id = 1
  ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT c.name, c.motto
  FROM characters as c
  ORDER BY LENGTH(c.motto) DESC
  LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT c.species, COUNT(c.species)
  FROM characters as c
  GROUP BY c.species
  ORDER BY COUNT(c.species) DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT a.name, subgenres.name
  FROM authors as a
  JOIN series
  ON series.author_id = a.id
  JOIN subgenres
  ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT s.title
  FROM series as s
  JOIN characters
  ON s.id = characters.series_id
  WHERE characters.species = 'human'
  GROUP BY s.title
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT c.name, COUNT(b.title)
  FROM characters as c
  JOIN character_books as cb
  ON c.id = cb.character_id
  JOIN books as b
  ON cb.book_id = b.id
  GROUP BY c.name
  ORDER BY COUNT(b.title) DESC;"
end
