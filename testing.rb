require_relative "methods"

# nail_shape = read_as_file("nail_art.txt")

# nail_shape.each do |shape|
#     puts ">#{shape}<"
# end
def testing_randomize
    order_1 = Order.new
    order_2 = Order.new

    if randomize_test(order_1) == randomize_test(order_2)
        puts "Fail"
    else 
        puts "Pass"
    end 
end 






