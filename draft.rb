colours = ["blue", "green", "white"]
shape = ["oval", "coffin", "siletto"]
nail_art = ["stcikers", "jewels"]


order = {}

puts "Welcome to Bespoke nails!"
puts "Would you like to book a manicure or pedicure?"
mani_or_pedi = gets.chomp.downcase
order["Maicure or Pedicure"] = mani_or_pedi
case mani_or_pedi
when "manicure"
    puts "Would you like to customise or randomise your order?"
    selection = gets.chomp.downcase
    case selection
    when "customise"
        puts "What colour do you want?"
        colours.each do |colour|
            puts colour
        end 
        colour_chosen = gets.chomp
        order["Colour"] = colour_chosen

    end 
end 


