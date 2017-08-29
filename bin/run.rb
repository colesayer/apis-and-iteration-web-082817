#!/usr/bin/env ruby

require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"


welcome
character = get_character_from_user
results = show_character_movies(character)

until results != nil
puts "This character does not exist. Have you even seen Star Wars?\n\n"
character = get_character_from_user
results = show_character_movies(character)
end
