require "rainbow"
require "tty-prompt"
prompt = TTY::Prompt.new

        cherry = Rainbow("Cherry").webmaroon 
        deep_red = Rainbow("Deep Red").brown
        crimson = Rainbow("Crimson").crimson
        maroon = Rainbow("Maroon").maroon 
        ginger = Rainbow("Ginger").orangered
        burnt_orange = Rainbow("Burnt Orange").chocolate
        gold = Rainbow("Gold").goldenrod 
        dark_gold = Rainbow("Dark Gold").darkgoldenrod
        tangerine = Rainbow("Tangerine").orange
        coral = Rainbow("Coral").coral
        salmon = Rainbow("Salmon").darksalmon
        apricot = Rainbow("Aprciot").tomato 
        cinnamon = Rainbow("Cinnamon").sienna
        pecon = Rainbow("Pecan").saddlebrown 
        caramel = Rainbow("Caramel").sandybrown 
        mustard = Rainbow("Mustard").peru
        peach = Rainbow("Peach").burlywood
        daffodil = Rainbow("Daffodil").peachpuff
        khaki = Rainbow("Khaki").darkkhaki 
        butter = Rainbow("Butter").tan
        sand = Rainbow("Sand").palegoldenrod 
        pale_banana = Rainbow("Pale Banana").wheat
        pineapple = Rainbow("Pinapple").yellowgreen
        pale_lemon = Rainbow("Pale Lemon").khaki 
        pale_yellow = Rainbow("Pale Yellow").greenyellow 
        bright_yellow = Rainbow("Bright Yellow").gold
        olive = Rainbow("Olive").olive
        fern = Rainbow("Fern").olivedrab 
        sea_green = Rainbow("Sea Green").lightseagreen 
        dusty_green = Rainbow("Dusty Green").lightslategray 
        spring_green = Rainbow("Spring Green").limegreen 
        dusty_aqua = Rainbow("Dusty Aqua").mediumaquamarine
        seafoam = Rainbow("Seafoam").palegreen
        pale_mint = Rainbow("Pale Mint").paleturquoise 
        aqua = Rainbow("Aqua").aqua
        aquamarine = Rainbow("Aquamarine").aquamarine
        ivy_green = Rainbow("Ivy Green").darkgreen
        teal = Rainbow("Teal").darkcyan
        lime = Rainbow("Lime").chartreuse
        pale_ivy = Rainbow("Pale Ivy").cadetblue
        deep_olive = Rainbow("Deep Olive").darkolivegreen
        turquoise = Rainbow("Turquoise").darkturquoise
        pastel_green = Rainbow("Pastel Green").lightgreen 
        pine = Rainbow("Pine").seagreen
        ocean = Rainbow("Ocean").slategray 
        basil = Rainbow("Basil").springgreen 
        shamrock = Rainbow("Shamrock").teal 
        parakeet = Rainbow("Parakeet").turquoise
        pickle = Rainbow("Pickle").webgreen
        artic = Rainbow("Arctic").powderblue 
        pale_green = Rainbow("Pale Green").darkseagreen
        cerulean = Rainbow("Cerulean").skyblue 
        stone = Rainbow("Stone").slateblue 
        steel_blue = Rainbow("Steel Blue").steelblue 
        lapis = Rainbow("Lapis").royalblue 
        pastle_blue = Rainbow("Pastel Blue").lightblue
        midnight_blue = Rainbow("Midnight Blue").midnightblue
        royal_blue = Rainbow("Royal Blue").mediumblue
        navy_blue = Rainbow("Navy Blue").darkblue
        pastel_blue = Rainbow("Pastel Blue").cornflower
        dodger_blue = Rainbow("Dodger Blue").dodgerblue 
        slate_blue = Rainbow("Slate Blue").darkslateblue
        deep_orchid = Rainbow("Deep Orchid").darkorchid
        violet = Rainbow("Violet").blueviolet
        raspberry = Rainbow("Raspberry").darkmagenta
        deep_violet = Rainbow("Deep Violet").darkviolet
        hot_pink = Rainbow("Hot Pink").hotpink 
        dusty_pink = Rainbow("Dusty Pink").indianred 
        deep_purple = Rainbow("Deep Purple").indigo
        pastel_coral = Rainbow("Pastel Coral").lightcoral 
        pastel_raspberry = Rainbow("Pastel Raspberry").lightpink 
        orchid = Rainbow("Orchid").mediumorchid 
        dusty_purple = Rainbow("Dusty Purple").mediumpurple 
        bright_violet = Rainbow("Bright Violet").mediumvioletred 
        rose = Rainbow("Rose").orchid
        watermelon = Rainbow("Watermelon").palevioletred 
        coral = Rainbow("Coral").pink 
        blush = Rainbow("Blush").plum 
        mulberry = Rainbow("Mulberry").purple
        eggplant = Rainbow("Eggplant").rebeccapurple 
        heather = Rainbow("Heather").rosybrown 
        taffy = Rainbow("Taffy").violet
        grape = Rainbow("Grape").webpurple 
        almond = Rainbow("Almond").blanchedalmond
        white = Rainbow("White").cornsilk
        grey = Rainbow("Grey").darkgray
        silver = Rainbow("Silver").gray
        dark_grey = Rainbow("Dark Grey").darkslategray

        colour_array = [cherry, deep_red, crimson, maroon, ginger, burnt_orange, gold, dark_gold, tangerine, coral, salmon, apricot, cinnamon, pecon, caramel, mustard, peach, daffodil, khaki, butter, sand, pale_banana, pineapple, pale_lemon, pale_yellow, bright_yellow, olive, fern, sea_green, dusty_green, spring_green, dusty_aqua, seafoam, pale_mint, aqua, aquamarine, ivy_green, teal, lime, pale_ivy,deep_olive, turquoise, pastel_green, pine, ocean, basil, shamrock, parakeet, pickle, artic, pale_green, cerulean, stone, steel_blue, lapis, pastle_blue, midnight_blue, royal_blue, navy_blue, pastel_blue, dodger_blue, slate_blue, deep_orchid, violet, raspberry, deep_violet, hot_pink, dusty_pink, deep_purple, pastel_coral, pastel_raspberry, orchid, dusty_purple,bright_violet, rose, watermelon, coral, blush, mulberry, eggplant,heather, taffy, grape, almond, white, grey, silver,dark_grey]

        chioces = colour_array

nail_shape = ["Square", "Oval", "Squoval", "Rounded", "Stiletto", "Almond", "Coffin"]

nail_art = ["Stenciled", "Ombre", "Stickers", "Marbled", "Two-toned", "Polka-dot", "French", "Matt-look", "Aztec", "Glitter", "Jewelled", "Metallic", "Other"]
     
order = {}

puts "Welcome to Bespoke Nails!"
mani_or_pedi = prompt.select("Would you like a manicure or pedicure?", %w(Manicure Pedicure))
order["mani_or_pedi"] = mani_or_pedi

puts "Would you like to customize or randomize?"
selection = gets.chomp.downcase
case selection
when "customize"
    puts colour_choice = prompt.multi_select("Choose your colours:", chioces)
    order["colour_choice"] = colour_choice
    puts nail_shape = prompt.select("Which nail shape would you like:", nail_shape)
    order["nail_shape"] = nail_shape
    puts "Would you like nail art? (y/n)"
    response = gets.chomp.downcase
    if response == "y"
        nail_art = prompt.select("Which type of nail art would you like:", nail_art)
        order["nail_art"] = nail_art
        puts "Here is your order:"
        order.each do |key, value|
            puts key.to_s + " : " + value.to_s
        end 

    elsif response == "n"
        puts "Here is your order:"
        order.each do |key, value|
            puts key.to_s + " : " + value.to_s
        end 
    else 
        puts "Invalid response"
    end 


when "randomize"
    response = "n"
    while response == "n"
        random_colour1 = colour_array.sample
        random_colour2 = colour_array.sample
        random_colour3 = colour_array.sample
        random_shape = nail_shape.sample
        random_art = nail_art.sample
        nail_order = "Your randomized nails are #{random_colour1}, #{random_colour2} and #{random_colour3}, with a #{random_shape} shape and #{random_art} nail art."
        puts nail_order
        puts "Are you happy with your randomized nails?"
        response = gets.chomp
    end 
    puts nail_order

else
    puts "Invalid selection"

end   

    




