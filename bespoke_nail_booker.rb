require 'rainbow'
require_relative 'methods'
require 'valid_email2'

salon_name = ARGV[0]

def gets
    STDIN.gets
end

prompt = TTY::Prompt.new
order = Order.new
customer = Customer.new

puts 'Welcome to Bespoke Nails Booker!'
puts "Salon name: #{salon_name}"

customer_details = customer.customer_details

order.is_mani = does_user_want_a_mani(prompt)

rand_or_cust = randomise_or_customise(prompt)
if rand_or_cust == 'Customise'
    order.colours = colour_choice(prompt)
    order.nail_shape = nail_shape_choice(prompt)
    order.nail_art = nail_art_choice(prompt)
    order.print_order

elsif rand_or_cust == 'Randomise'
    randomise(prompt, order)
    order.print_order
end

order_to_file = order.print_to_file

File.write("order#{Time.now}.txt", customer_details + order_to_file)
