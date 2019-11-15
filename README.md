# Terminal Application

## Software Development Plan 

### T1A2-1 Statement of purpose and scope

The Bespoke-Nails-Booker is terminal application designed to book a manicure or pedcicure by an automated system. The application will ensure the most effecient use of time during the booking process and during the treatment for both the technician and the customer. It allows the customer to communicate the details of the treatment they would like before the appointment saving time when the customer arrives at the salon for thier nail appointment. The program will allow the user to randomise or customise the treatment. The customize option allows the customer to provide the specifics of the treatment including colours, shape of the nail and the nail art. The randomize option will provide a random combination of the available options of colour, shape and nail art. This option provides a unique nail design for those that are looking for a change in thier usual order or those that are unsure of the style they want. This generator will produce various styles until the customer is happy with the outcome of the generator. This will then print the order to a file for the nail technicion to prepare for the customers treatment prior to arrival saving time for both the customer and technician. 

### T1A2-2 Features
Menus
The menus in the application will utilise the tty.prompt Ruby Gem. This allows the user to easily navigate, using the arrow keys, through the a list and eliminates the risk of the adverse user input and controls the flow of the code. The list input can be set-up to accept multiple selections (multi.select) or to accept only one input. Multi.select is utilised to let the user input more than one nail polish colour. The single selection method is used to where the program only wants one answer for example in case of asking for a manicure or pedicure. These options are then added to the new class instance Order. Conditional control structures will be exectued in the code to ensure the correct information is displayed to the user. When the user selects the customize option if statements are used to ensure the next menu allows the user to choose thier colors. 

Customize or Randomize
Another feature of the application is the user is given the option to customize or randomize the order. If the user selects to customize the program will run through the mennus and prompts to select their individual look. The program will create a method for generating a random combination of the avalible options. The method will call the arrays from the data page and a sample will be called on each of the arrays. This will crceate a unique look for the customer and give them the opportunity to try something new without having to decide themseleves. The generator will prompt the user to inout whether they are happy with the outcome and give them a chance to respond. If the customer decides they dislike the style they can re-generate the randomizer until they are they happy. This is done using a loop that only breaks when the user selects yes and the program will then print out the order and save it to a file. 

Write to file 
The program will save the customers personal details and the specfics of the order in a file. This allows the booking to be saved and viewed at a later date. Saving the customers details mean they can be sent promotions in the future based on their previous orders. This also allows for the customers orders to be recalled at a later date for a more personalised service. The program also makes use of reading from files to gather information to an array. The text files contain the nail shape options and nail art options. These are then pulled from the file looping over each of the text file lines and pushing them into an array to be utilised within the code. As there can be exceptions when pulling from a text file the keyword ruscue can be used to display an arror message if the file is not exectued correctly. A message will displayed detailing the file name that was not loaded to notify the user of the error. 

### T1A2-3 User Interaction and Experience

The Gems Rainbow and TTY-prompt was used to make the terminal output easier to follow and look more appealing. The customer details are typed in next to the prompt detailing the required information. The customer details are then saved in an instance of the class Customer these details are then written to a file for future access. The use of TTY-prompt makes the navigation of the application simple to follow as each menu follows after the selection has been made from the previous menu. The customer and ordr details will be written to a file for future referal. Each file name is written to the current date and time to ensure a new file is created for each order to ensure no file is over-written. The user will then have the details of each customer order saved locally. 



Add in the name of the files 
data.rb - for colours 
nail_shape.rb... 
try and add arg v 












### Development log 

<b>Wednesday 13th November</b>



<b>Thursday 14th November</b>

As planned I continued to develop my code by putting certain elements into methods. During the creation of my methods I reliased it would be easier if I produced the final printed order in a class. This way I could ensure all parameters are met to print the final result. Creating the order class also allowed me to print only the parameters I needed based on the user input. 

I also added a feature that reads the nail shape and nail art options from a text file and then prinnts to teh termminal. This way teh user does not have to have prior coding knowldge in order to change these features in the future they can ammended from the text file.

There are still a few errors with my code that I need to address, the randomize feature of my program is not displaying the results that the user has slected they are happy with. This is the next part of my code that I will work on. 

<b>Friday 15th November</b>

I have successfully completed both the customize and randomize features of my application and have decided that I need to add a new class for each customer. I am then planning to write both the customer details and the details of thier order to a file to view the order at a later date. I am undecided whether to add only the customer name to the file or further personal details due to time constraints. Adding the phone number and the email address require validation which will take quite a while to implement. 






