require 'open-uri'
require 'nokogiri'
require 'csv'

##############################################
############# SCRAPING FROM IMDB #############
##############################################

url = 'https://www.imdb.com/chart/top/'

html_file_string = open(url).read
document = Nokogiri::HTML(html_file_string)

# ** In here, we've decided to do something interesting in the lecture..
# ** We got the movie titles from IMDB, stored them into an array
movie_titles = []

document.search('.titleColumn a').each do |element|
  # ** As you can see, I'm pushing the text from the element to the movies array
  movie_titles << element.text.strip
end

# ** And we decided to store in the CSV the movie titles \O/

csv_options = {
  col_sep: ',',
  quote_char: '"',
  force_quotes: true
}

CSV.open('data/movies.csv', 'wb', csv_options) do |csv|
  movie_titles.each do |title|
    csv << [title]
  end
end