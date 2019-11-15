require "tty-prompt"
require_relative "data"

class Customer
    attr_accessor :customer_name, :customer_number, :customer_email

    def customer_name
        puts "Customer_name:"
        @customer_name = gets.chomp
    end 

    # def customer_number
    #     puts "Customer_number:"
    #     @customer_number = gets.chomp
    # end 

    # def customer_email
    #     puts "Customer_email:"
    #     @customer_number = gets.chomp
    # end 

    def customer_details 
        customer_details = []
        customer_details.push customer_name 
        customer_details.push customer_number
        customer_details.push customer_email
    end 

end 


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
    mani_or_pedi = prompt.select("Book manicure or pedicure?", %w(Manicure Pedicure))
    mani_or_pedi == "Manicure"
end 

def randomize_or_customize
    puts "Book customize or randomize treatment?"
    selection = gets.chomp.downcase
end 

def colour_choice(prompt)
    colour_choice = prompt.multi_select("Choose colours:", $colour_array)
end 

def nail_shape_choice(prompt)
    nail_shape = read_as_file("nail_shape.txt")
    return nail_shape = prompt.select("Choose nail shape:", nail_shape)
end 

def nail_art_choice(prompt)
    nail_art = read_as_file("nail_art.txt")
    puts "Would you like nail art? (y/n)"
    response = gets.chomp.downcase
    if response == "y"
        nail_art = prompt.select("Coose type of nail art:", nail_art)
    end    
end 

def random_colours
    random_colour = $colour_array.sample(3)
    random_colour
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

def randomize(prompt, order)
    response = "no"
    while response == "no"
        order.colours = random_colours
        order.nail_shape = random_shape
        order.nail_art = random_art
        order.print_order
        response = prompt.select("Is the customer happy with the order?", %w(yes no))
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
            puts
        else
            puts "A pedicure order:"
            puts
        end

        puts "Colours: #{@colours.join(", ")}"
        if nail_art != nil
            puts "Nail art: #{@nail_art}"
        end 
        if @is_mani
            puts "Nail shape: #{@nail_shape}"
        end 
    end 

    def print_to_file
        print_to_file = []
        print_to_file.push is_mani
        print_to_file.push colours
        print_to_file.push nail_art
        print_to_file.push nail_shape
    end 


end



# nail_shape = read_as_file("nail_art.txt")

# nail_shape.each do |shape|
#     puts ">#{shape}<"
# end

