require_relative 'methods'

nail_shape = read_as_file('nail_art.txt')

nail_shape.each do |shape|
    puts '>#{shape}<'
end

def testing_randomise
    order_1 = Order.new
    order_2 = Order.new

    randomise_order_contents(order_1)
    randomise_order_contents(order_2)

    if order_1.nail_art != order_2.nail_art || order_1.nail_shape != order_2.nail_shape || order_1.colours != order_2.colours
        puts 'PASS'
    else 
        puts 'FAIL'
    end 
end 

puts testing_randomise








