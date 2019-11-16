require "tty-prompt"
require_relative "data"
require "valid_email2"

class Customer
    attr_accessor :customer_name, :customer_email

    def customer_name
        puts "Customer_name:"
        while customer_name = gets.chomp
            case customer_name
            when ""
                puts "No name entered!"
            exit
        end 
            return @customer_name = customer_name 
            break
    end

    end 
        

    def customer_email
        puts "Customer_email:"
        @customer_email = gets.chomp
        while (ValidEmail2::Address.new(@customer_email)).valid? == false
            puts "Invalid email! Please try again:"
            @customer_email = gets.chomp
        end 
        return @customer_email
    end 

    def customer_details 
        customer_details = []
        customer_details.push customer_name 
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

def randomize_or_customize(prompt)
    cust_or_rand = prompt.select("Book randomized or customized?", %w(Randomize Customize))
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
    want_nail_art = prompt.select("Nail art?", %w(Yes No))
    if want_nail_art == "Yes"
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

def randomize_test(order)
    order.colours = random_colours
    order.nail_shape = random_shape
    order.nail_art = random_art
    random_colours.to_s + random_shape.to_s + random_art.to_s
end 


class Order
    attr_accessor :nail_art, :nail_shape, :colours, :is_mani
    def initialize 
        @colours = []
    end

    def print_order
        if @is_mani
            puts "Manicure order:"
        else
            puts "Pedicure order:"
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
        if is_mani == true 
            print_to_file.push "Manicure"
        else 
            print_to_file.push "Pedicure"
        end 
        print_to_file.push colours
        print_to_file.push nail_art
        print_to_file.push nail_shape
    end 


end




