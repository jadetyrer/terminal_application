# Terminal Application

## Software Development Plan 

### T1A2-1 Statement of purpose and scope

The Bespoke-Nails-Booker is terminal application designed to book a manicure or pedicure as an automated system. The application will ensure the most efficient use of time during the booking process and during the treatment for both the technician and the customer. It allows the customer to communicate the details of the treatment they would like before the appointment saving time when the customer arrives at the salon for their nail appointment. The program will allow the user to randomise or customise the treatment. The customize option allows the customer to provide the specifics of the treatment including colours, shape of the nail and the nail art. The randomize option will provide a random combination of the available options of colour, shape and nail art. This option provides a unique nail design for those that are looking for a change in their usual order or those that are unsure of the style they want. This generator will produce various styles until the customer is happy with the outcome of the generator. This will then print the order to a file for the nail technician to prepare for the customers treatment prior to arrival saving time for both the customer and technician.

The colour array is created using the `rainbow` Ruby gem by saving each colour name with its colour in a variable. Each colour variable was then added to an array that can be called into the main code by making the making the colour arrays scope global. This data will be kept in a separate `data.rb` file to keep code clean and increasing its maintainability. The data regarding the nail shape and colour are to be kept in text files `nail_shape.rb` and `nail_art.rb` the text will then be pulled into an array to be displayed to the user. This feature allows the users to easily edit and update the options without having to edit the code increasing it usability. 

### T1A2-2 Features
###### Menus
The menus in the application will utilise the `tty-prompt` Ruby gem. The branching system will prompt the user for input dependent on the previous information entered. Menus will be executed by the methods created in the methods.rb file. Menus allow the user to easily navigate, using the arrow keys, through the a list and eliminates the risk of the adverse user input and controls the flow of the code. The list input can be set-up to accept multiple selections (multi.select) or to accept only one input. Multi.select is utilised to let the user input more than one nail polish colour. The single selection method is used to where the program only wants one answer for example in case of asking for a manicure or pedicure. These options are then added to the new class instance Order. Conditional control structures will be executed in the code to ensure the correct information is displayed to the user. When the user selects the customize option if statements are used to ensure the next menu allows the user to choose their colours. 

###### Customize or Randomize
Another feature of the application is the user is given the option to customize or randomize the order. If the user selects to customize the program will run through the menus and prompts to select their individual look. The program will contain a method for generating a random combination of the avalible options. The method will reference the arrays from the data.rb file or pull the information from the text files `nail_shape.txt` and `nail_shape.txt`. A random sample will be taken from this data and another method ill be called to place the information in a instance of an Order class. This will create a unique look for the customer and give them the opportunity to try something new without having to decide themselves. The program will prompt the user to input whether they are happy ('Yes or 'No) with the outcome. If the user inputs 'No' the program will enter a conditional loop that will re-generate nail styles until the user inputs "Yes". Once the loop is broken the program will print out the order and write it to a file. The feature will implement a control structure to ensure the correct information is shown to the user based on previous decisions made, for example the nail shape will not be an option when booking a pedicure. 

###### Write to file 
The program will save the customers personal details and the specifics of the order in a file. This allows the booking to be saved and viewed at a later date. Saving the customers details mean they can be sent promotions in the future based on their previous orders. This also allows for the customers orders to be recalled at a later date for a more personalised service. The program also makes use of reading from files to gather information to an array. The text files contain the nail shape options and nail art options. These are then pulled from the file looping over each of the text file lines and pushing them into an array to be utilised within the code. As there can be exceptions when pulling from a text file the keyword rescue can be used to display an error message if the file is not executed correctly. A message will displayed detailing the file name that was not loaded to notify the user of the error. 

### T1A2-3 User Interaction and Experience

The Gems Rainbow and `tty-prompt` was used to make the terminal output easier to follow and look more appealing. The user is then prompted to enter the customer name, an error message will be displayed if the user does not provide any input and exit the program. When the name is enetered the program will ask for an email address and the Ruby gem `valid_email2` will be used to validate the address provided by the user. If the user inputs an invalid email address an error message will be displayed warning the user the email is in an invalid format and ask the user to try again until a valid email address format is provided. The customer details are later saved in an instance of a Customer class and these details are then written to a file for future access. The use of `tty-prompt` for the menus makes the navigation of the application simple to follow as each menu follows after the selection has been made from the previous menu. The use of `tty-prompt` also reduces the risk of invalid entries by the user. The customer and order details will be written to a file for future referal. Each file name is written to the current date and time to ensure a new file is created for each order to ensure no file is over-written. The user will then have the details of each customer order saved locally. 


### T1A2-5 Control Flow Diagram
[Control Flow Diagram](https://github.com/jadetyrer/terminal_application/blob/master/Control_flow_diagram.jpeg)

![Control Flow Diagram](https://github.com/jadetyrer/terminal_application/blob/master/Control_flow_diagram.jpeg)


### T1A2-6 Implementation Plan


### T1A2-7 Implement Application
To run the application in Terminal: ruby bespoke_nail_booker.rb {'salon name'}

### T1A2-9 Style and Conventions
The `Rubocop` Ruby gem used is used to ensure style and conventions

### T1A2-11 Help File

#### Installation

###### MAC: OS

1. Open terminal (can be found by searching in 'Finder')
2. Clone the Github repository [here](https://github.com/jadetyrer/terminal_application)
3. Enter the `git clone {url}` to the terminal
4. `cd` into the directory with the cloned respository is saved
5. Type in `./build.sh` to the terminal to download the relevant gems and files
6. Start the program by typing `bespoke_nail_booker.rb {'salon name'}` 

#### Dependancies 
Ruby must be downloaded to your computer. This can be installed through homebrew by following [this link](https://brew.sh/) and coping the link provided to your terminal. You can then type `brew install ruby` to the command line. 

The application also requires the following Ruby gems:
+ tty-prompt
+ rainbow
+ valid_email2

n.b. the gems will be automatically downloaded via the build script. 

#### Features

**Customer details**
The customer name must be entered when prompted, if nothing is entered in this field the program will terminate. The customer email needs to be entered in the correct format, if a mistake is made the program will ask to try again until the correct email format is adhered to.

**Menus** 
The menus that require only one selction are navigated via the keyboard arrows and slected by pressing enter. As the colour menu allows the user to input more than one option the colours required are selcted via the space bar and entered via the enter key. 


**Customize and Randomize** 
This feature is selected via a menu "Customize" or "Randomize" will be selected by the user and following output will produce a different menu depending on the selection. The "customize" option will step through the menu options to pick the specifice nail style defined by the customer. The "randomize" option will produce a unique style select "yes" if this is the customers preferred nail style or "no" to regenerate a new style. 

**Write to file**
The file will be written loaclly with the coustomer and order details after all details have ben selected. This will be exectued automatically. If this needs to be edited open the file and edit the text directly.





















 

Add help for ARGV 
do help file 












### Development log 

<b>Thursday 14th November</b>

As planned I continued to develop my code by putting certain elements into methods. During the creation of my methods I reliased it would be easier if I produced the final printed order in a class. This way I could ensure all parameters are met to print the final result. Creating the order class also allowed me to print only the parameters I needed based on the user input. 

I also added a feature that reads the nail shape and nail art options from a text file and then prints to the termminal. This way the user does not have to have prior coding knowldge in order to change these menu options in the future they can ammended from the text file.

There are still a few errors with my code that I need to address, the randomize feature of my program is not displaying the results that the user has slected they are happy with. This is the next part of my code that I will work on. 

I ahve decided if I have time to add in another feature to the application that take the customer name and email as inputs and writes this to the file at the end along side the order details. This will increase the capabilities of the program. 

<b>Friday 15th November</b>

I have successfully completed both the customize and randomize features of my application and have created a new class to create an instance for each customer order. I am then planning to write both the customer details and the details of thier order to a file to view the order at a later date. Due to time constrainats I have decided only to add the name and email as customer details. Adding the phone number will require additional validation which will take quite a while to implement. 

I have also written a test for my code that ensures that each of my randomization outputs are not the the same. The test takes two instances of the randomized orders and compares them to ensure they are not equal.

I have added a command line argument that will further personalise the application to the salon using the program. 






