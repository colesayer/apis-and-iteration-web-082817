require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character)
  page_number = 1
  current_page = get_current_page(page_number)

  until current_page["next"] == nil 
    current_page = get_current_page(page_number)

    current_page["results"].each do |person| 
      return person["films"].map {|film| JSON.parse(RestClient.get(film))} if person["name"].downcase == character
    end 

    page_number += 1
  end 
end

def get_current_page(page_number)
   current_page_string = RestClient.get("http://www.swapi.co/api/people/?page=#{page_number}")
   JSON.parse(current_page_string)
end 


def parse_character_movies(films_hash)
  if films_hash == nil 
    puts "This character does not exist. Have you even seen Star Wars?"
  else
    films_hash.each_with_index { |film, i| puts "#{i+1} #{film["title"]}" }
  end 
end

def show_character_movies(character)
  films_hash = get_character_movies_from_api(character)
  parse_character_movies(films_hash)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
