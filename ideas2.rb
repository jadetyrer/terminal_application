require "rainbow"
require_relative "methods"

nail_shape = read_as_file("nail_shape.txt")
nail_art = read_as_file("nail_art.txt")
prompt = TTY::Prompt.new
order = Order.new
customer = Customer.new

puts "Welcome to Bespoke Nails Booker!"
customer_details = customer.customer_details

order.is_mani = does_user_want_a_mani(prompt)

rand_or_cust = randomize_or_customize
if rand_or_cust == "customize"
    order.colours = colour_choice(prompt)
    order.nail_shape = nail_shape_choice(prompt)
    order.nail_art = nail_art_choice(prompt)
    order.print_order

elsif rand_or_cust == "randomize"
    randomize(prompt, order)
    order.print_order
end 

order_to_file = order.print_to_file

File.write("customer_order.txt", customer_details + order_to_file)




