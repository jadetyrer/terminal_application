require "tty-prompt"
require_relative "data"



def read_as_file(filename)
    output = []

    begin
        text = File.read(filename)
        text.each_line do |line|
            line = line.chomp
            if line != ""
            output << line
            end 
        end 
    rescue StandardError => msg
        puts "Failed to load #{filename} #{msg}"
    end 

    output
end 

def does_user_want_a_mani(prompt)
    mani_or_pedi = prompt.select("Would you like a manicure or pedicure?", %w(Manicure Pedicure))
    mani_or_pedi == "Manicure"
end 

def randomize_or_customize
    puts "Would you like to customize or randomize?"
    selection = gets.chomp.downcase
end 

def colour_choice(prompt)
    prompt = TTY::Prompt.new
    colour_choice = prompt.multi_select("Choose your colours:", $colour_array)
end 

def nail_shape_choice(prompt)
    prompt = TTY::Prompt.new
    nail_shape = read_as_file("nail_shape.txt")
    return nail_shape = prompt.select("Which nail shape would you like:", nail_shape)
end 

def nail_art_choice(prompt)
    prompt = TTY::Prompt.new(prompt)
    nail_art = read_as_file("nail_art.txt")
    puts "Would you like nail art? (y/n)"
    response = gets.chomp.downcase
    if response == "y"
        nail_art = prompt.select("Which type of nail art would you like:", nail_art)
    end    
end 

def random_colours
    random_colour = $colour_array.sample(3)
    random_colour.join(", ")
end 

def random_shape
    nail_shape = read_as_file("nail_shape.txt")
    random_shape = nail_shape.sample
    random_shape
end

def random_art
    nail_art = read_as_file("nail_art.txt")
    random_art = nail_art.sample
    random_art
end 

def randomize 
    response = "no"
    while response == "no"
        puts random_colours
        puts random_shape
        puts random_art
        prompt = TTY::Prompt.new
        response = prompt.select("Are you happy with your order?", %w(yes no))
    end
end 


class Order
    attr_accessor :nail_art, :nail_shape, :colours, :is_mani
    def initialize 
        @colours = []
    end

    def print_order
        if @is_mani
            puts "A manicure order:"
        else
            puts "A pedicure order:"
        end

        puts "Colours: #{@colours.join(", ")}"
        puts "Nail art: #{@nail_art}"
        if @is_mani
            puts "Nail shape: #{@nail_shape}"
        end 
    end 

end




# nail_shape = read_as_file("nail_art.txt")

# nail_shape.each do |shape|
#     puts ">#{shape}<"
# end

