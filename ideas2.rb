require "rainbow"
require_relative "methods"

nail_shape = read_as_file("nail_shape.txt")
nail_art = read_as_file("nail_art.txt")
prompt = TTY::Prompt.new
order = Order.new

puts "Welcome to Bespoke Nails!"
order.is_mani = does_user_want_a_mani(prompt)


rand_or_cust = randomize_or_customize
if rand_or_cust == "customize"
    order.colours = colour_choice(prompt)
    order.nail_shape = nail_shape_choice(prompt)
    order.nail_art = nail_art_choice(prompt)
    order.print_order

elsif rand_or_cust == "randomize"
    case randomize
    when "yes"
        puts order.colours = random_colour
    end 
end 
   









        #     puts "Here is your manicure order:"
        #     puts "Colour/s:"
        #     colour_choice.each do |colour|
        #         puts "#{colour.to_sym}"
        #     end 
        #     order.each do |key, value|
        #         puts key.to_s + " : " + value.to_s
        #         puts 

        #     end 
        # end 

     

    # when "randomize"
    #     response = "n"
    #     while response == "n"
    #         random_colour1 = colour_array.sample
    #         random_colour2 = colour_array.sample
    #         random_colour3 = colour_array.sample
    #         random_shape = nail_shape.sample
    #         random_art = nail_art.sample
    #         nail_order = "Your randomized nails are #{random_colour1}, #{random_colour2} and #{random_colour3}, with a #{random_shape} shape and #{random_art} nail art."
    #         puts nail_order
    #         puts "Are you happy with your randomized manicure?"
    #         response = gets.chomp
    #     end 
    #     puts "Your manicure is:"
    #     puts "Colours: #{random_colour1}, #{random_colour2} and #{random_colour3}"
    #     puts "Nail shape: #{random_shape}"
    #     puts "Nail art: #{random_art}"
    #     puts "Thanks for you order!"

    # else
    #     puts "Invalid selection"

    # end 
    
# when "Pedicure"
#     puts "Would you like to customize or randomize?"
#     selection = gets.chomp.downcase
#     case selection
#     when "customize"
#     puts colour_choice = prompt.multi_select("Choose your colours:", colour_array)
#     puts "Would you like nail art? (y/n)"
#     response = gets.chomp.downcase
#     if response == "y"
#         nail_art = prompt.select("Which type of nail art would you like:", nail_art)
#         order["Nail art"] = nail_art
#         puts "Here is your pedicure order:"
#         puts "Colour/s:"
#         colour_choice.each do |colour|
#             puts "#{colour.to_sym}"
#         end 
#         order.each do |key, value|
#             puts key.to_s + " : " + value.to_s

#         end 

#     elsif response == "n"
#         puts "Here is your pedicure order:"
#         puts "Colour/s:"
#         colour_choice.each do |colour|
#             puts "#{colour.to_sym}"
#         end 
#         order.each do |key, value|
#             puts key.to_s + " : " + value.to_s
#         end
        
#     else 
#         puts "Invalid response"
#     end 

# when "randomize"
#     response = "n"
#     while response == "n"
#         random_colour1 = colour_array.sample
#         random_colour2 = colour_array.sample
#         random_colour3 = colour_array.sample
#         random_art = nail_art.sample
#         nail_order = "Your randomized pedicure is #{random_colour1}, #{random_colour2} and #{random_colour3} and #{random_art} nail art."
#         puts nail_order
#         puts "Are you happy with your randomized pedicure?"
#         response = gets.chomp
#     end 
#     puts "Your pedicure order is:"
#     puts "Colours: #{random_colour1}, #{random_colour2} and #{random_colour3}"
#     puts "Nail art: #{random_art}"
#     puts "Thanks for your order!"

# else
#     puts "Invalid selection"
# end 

# end 



