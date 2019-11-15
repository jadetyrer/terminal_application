# Terminal Application

## Software Development Plan 

### T1A2-1 Statement of purpose and scope

The Bespoke-Nails-Booker is terminal application designed to book a manicure or pedcicure by an automated system. The application will ensure the most effecient use of time during the booking process and during the treatment for both the technician and the customer. It allows the customer to communicate the details of the treatment they would like before the appointment saving time when the customer arrives at the salon for thier nail appointment. The program will allow the user to randomise or customise the treatment. The customize option allows the customer to provide the specifics of the treatment including colours, shape of the nail and the nail art. The randomize option will provide a random combination of the available options of colour, shape and nail art. This option provides a unique nail design for those that are looking for a change in thier usual order or those that are unsure of the style they want. This generator will produce various styles until the customer is happy with the outcome of the generator. This will then print the order to a file for the nail technicion to prepare for the customers treatment prior to arrival saving time for both the customer and technician. 

### T1A2-2 Features
Menus - The menus in the application will utilise the tty.prompt Ruby Gem. This allows the user to easily navigate, using the arrow keys, through the a list and eliminates the risk of the adverse user input. The lists can be created using arrays of data and 



The user will be able to pick from a list of colours displayed in the same colour of the nail polish for ease of use. This will make use of the tty.prompt Ruby Gem. This allows the user to easily navigate using the arror keys through the list of colours and eliminates the risk of the adverse user input. The user will be able to pick multiple colours from the list which will be added to a new order instance. 












### Development log 

<b>Wednesday 13th November</b>



<b>Thursday 14th November</b>

As planned I continued to develop my code by putting certain elements into methods. During the creation of my methods I reliased it would be easier if I produced the final printed order in a class. This way I could ensure all parameters are met to print the final result. Creating the order class also allowed me to print only the parameters I needed based on the user input. 

I also added a feature that reads the nail shape and nail art options from a text file and then prinnts to teh termminal. This way teh user does not have to have prior coding knowldge in order to change these features in the future they can ammended from the text file.

There are still a few errors with my code that I need to address, the randomize feature of my program is not displaying the results that the user has slected they are happy with. This is the next part of my code that I will work on. 

<b>Friday 15th November</b>

I have successfully completed both the customize and randomize features of my application and have decided that I need to add a new class for each customer. I am then planning to write both the customer details and the details of thier order to a file to view the order at a later date. I am undecided whether to add only the customer name to the file or further personal details due to time constraints. Adding the phone number and the email address require validation which will take quite a while to implement. 




