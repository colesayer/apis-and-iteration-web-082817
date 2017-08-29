def welcome
  puts "Welcome to the Star Wars API search engine!"
  puts "*" * 73

 puts"              _________________      ____        __________"
 puts".       .    /                 |    /    \\   .  |          \\ "
 puts"    .       /    ______   _____| . /      \\     |    ___    |     .  ."
 puts"            \\   \\     |   |       /   /\\   \\    |   |___>   |"
 puts"          .  \\   \\    |   |      /   /__\\   \\.  |         _/   ."
 puts".     ________>   |   |   | .   /            \\  |   |\\    \\_______  ."
 puts"     |            /   |   |    /    ______    \\ |   | \\           |"
 puts"     |___________/    |___|   /____/      \\___ \\|___|  \\__________|    ."
 puts" .     ____    __  . _____   ____      .  __________   .  _________"
 puts"      \\    \\  /  \\  /    /  /    \\       |          \\   /         |    ."
 puts"       \\    \\/    \\/    /  /      \\      |    ___    | /    ______|  ."
 puts"        \\              /  /   /\\   \\ .   |   |___>   |  \\    \\ "
 puts"  .      \\            /  /   /__\\   \\    |         _/.   \\    \\ "
 puts"          \\    /\\    /  /            \\   |   |\\    \\______>    |   ."
 puts"           \\  /  \\  /  /    ______    \\  |   | \\              /    ."
 puts".       .   \\/    \\/  /____/      \\____\\ |___|  \\____________/"
 puts " "

puts "*" * 73
end

def get_character_from_user
  puts "Please enter a character to see what films they appeared in:"
  gets.chomp.downcase 
end
