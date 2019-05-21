def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year FROM books INNER JOIN series ON Books.series_id = Series.id WHERE Series.id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT() FROM characters GROUP BY species ORDER BY COUNT() DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name FROM Authors JOIN Series ON Authors.id = Series.author_id JOIN Subgenres ON Series.subgenre_id = Subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title FROM Series JOIN Characters ON Series.id = Characters.series_id WHERE Characters.species = 'human' GROUP BY Series.title ORDER BY COUNT() DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT() as num FROM Character_Books JOIN Books ON Character_Books.book_id = Books.id JOIN Characters ON Character_Books.character_id = Characters.ID GROUP BY Characters.id ORDER BY num DESC, Characters.name ASC"
end
