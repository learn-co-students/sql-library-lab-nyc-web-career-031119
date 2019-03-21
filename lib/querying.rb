def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER by length(motto) desc limit 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) desc LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors
  JOIN series ON authors.id = series.author_id
  JOIN subgenres ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  # "SELECT series.title FROM series JOIN characters ON series.id = characters.series_id

  #where characters.species = 'human' group by series.title ORDER BY characters.species desc
  #WHERE species= (SELECT COUNT(species) from characters group by species)"

  # GROUP BY characters.species
  # HAVING COUNT(species) = (SELECT COUNT(species) AS cnt FROM characters
  # GROUP BY characters.species)"



  "SELECT series.title
  FROM series
  JOIN characters ON series.id = characters.series_id
  GROUP By characters.species
  Having Count(*) = (
  SELECT MAX(Cnt) FROM(
  SELECT COUNT(*) as Cnt
  FROM characters
  GROUP BY characters.species) tmp)"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.id) FROM characters
  JOIN character_books ON characters.id = character_books.character_id
  JOIN books ON books.id = character_books.book_id GROUP BY characters.name ORDER BY COUNT(books.id) DESC"#{} LIMIT"
end
