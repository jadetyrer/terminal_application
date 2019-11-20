require_relative 'methods'


def test_nail_shape_not_empty
    nail_shape = read_as_file('nail_art.txt')
    nail_shape.each do |shape|
        if shape.length > 0
            puts 'Pass'
        else
            puts 'Fail'
        end 
    end   
end

def testing_randomise
    # This is a method to test that the 2 instances of randomise do not produce the same result.
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

puts test_nail_shape_not_empty
puts testing_randomise









