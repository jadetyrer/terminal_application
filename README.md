# Terminal Application

## Software Development Plan 

### T1A2-1 Statement of purpose and scope

The Bespoke-Nails-Booker is terminal application designed to book a manicure or pedicure as an automated system. The application will ensure the most efficient use of time during the booking process and during the treatment for both the technician and the customer. It allows the customer to communicate the details of the treatment they would like before the appointment saving time when the customer arrives at the salon for their nail appointment. The program will allow the user to randomise or customise the treatment. The customise option allows the customer to provide the specifics of the treatment including colours, shape of the nail and the nail art. The randomise option will provide a random combination of the available options of colour, shape and nail art. This option provides a unique nail design for those that are looking for a change in their usual order or those that are unsure of the style they want. This generator will produce various styles until the customer is happy with the outcome of the generator. This will then print the order to a file for the nail technician to prepare for the customer's treatment prior to arrival saving time for both the customer and technician.

The colour array is created using the `rainbow` Ruby gem by saving each colour name with its colour in a variable. Each colour variable was then added to an array that can be called into the main code by making the making the colour arrays scope global. This data will be kept in a separate `data.rb` file to keep code clean and increasing its maintainability. The data regarding the nail shape and colour are to be kept in text files `nail_shape.rb` and `nail_art.rb` the text will then be pulled into an array to be displayed to the user. This feature allows the users to easily edit and update the options without having to edit the code increasing it usability. 

### T1A2-2 Features
###### Menus
The menus in the application will utilise the `tty-prompt` Ruby gem. The branching system will prompt the user for input dependent on the previous selection. Menus will be executed by the methods created in the methods.rb file. Menus allow the user to easily navigate, using the arrow keys, through the a list and eliminates the risk of the adverse user input and controls the flow of the code. 

The menu selection can be set-up to accept multiple inputs (multi.select) or to accept only one input. Multi.select is utilised to allow the user input more than one nail polish colour. The single selection method is used to where the program only wants one answer for example in case of asking for a manicure or pedicure. These options are then added to the new instance of the Order class. Conditional control structures will be executed in the code to ensure the correct information is displayed to the user. An example of this is when the user selects the customise option if statements are utilised to ensure the next menu allows the user to choose their colours. 

###### Customise
Another feature of the application is the user is given the option to customise the order. If the user selects to customise their treatment the program will run through the menus and prompts to select their nail style options. Methods will create the arrays from the `data.rb` file or pull the information from the text files `nail_shape.txt` and `nail_shape.txt`. The user will have a list of colour names in the colour of the nail polish it relates to and be able to navigate through colours that are grouped together for ease of selection process. The selections made by the user will be written to an instance of the class Order. The feature will implement a control structure to ensure the correct information is shown to the user based on previous decisions made, for example the nail shape will not be an option when booking a pedicure. The options selected by the user will then be printed to the terminal and the options will be pushed into an array and written to a file. 

###### Randomise
The randomise option produces a random element from these arrays using the `sample` method. The method selects a random index from the array to output a different combination each time it is run. This will create a unique look for the customer and give them the opportunity to try something new without having to decide themselves. The program will prompt the user to input whether they are happy ('Yes or 'No) with the outcome. If the user inputs 'No' the program will enter a conditional loop that will re-generate nail styles until the user inputs "Yes". Once the loop is broken the program will print out the order and push the selections to an array in order to write it to a file.

###### Write to file 
The program will save the customers personal details and the specifics of the order in a file. This allows the booking to be saved and viewed at a later date. Saving the customers details mean they can be sent promotions in the future based on their previous orders. This also allows for the customers orders to be recalled at a later date for a more personalised service. The program also read from files to push information into an array. The text files contain the nail shape options and nail art options. These are then pulled from the file looping over each of the text file lines and pushing them into an array. As there can be exceptions when pulling from a text file the keyword rescue can be used to display an error message if the file is not executed correctly. A message will be displayed detailing the file name that failed to load and notify the user of the error. 

### T1A2-3 User Interaction and Experience

The Gems Rainbow and `tty-prompt` was used to make the terminal output easier to follow and look more appealing. The user is prompted to enter the customer name, an error message will be displayed if the user does not provide any input and exit the program. When the name is entered the program will ask for an email address and the Ruby gem `valid_email2` will be used to validate the address provided by the user. If the user inputs an invalid email address an error message will be displayed warning the user the email is in an invalid format and ask the user to try again until a valid email is entered. The customer details are later saved in an instance of a Customer class. The use of `tty-prompt` for the menus makes the navigation of the application simple to follow as each menu follows after the selection has been made from the previous menu. The use of `tty-prompt` also reduces the risk of invalid entries by the user. The customer and order details will be written to a file for future access. Each file name is written to the current date and time to ensure a new file is created for each order to ensure no file is over-written. The user will then have the details of each customer and their order saved locally. 


### T1A2-5 Control Flow Diagram
[Control Flow Diagram](https://github.com/jadetyrer/terminal_application/blob/master/Control_flow_diagram.jpeg)

![Control Flow Diagram](https://github.com/jadetyrer/terminal_application/blob/master/Control_flow_diagram.jpeg)


### T1A2-6 Implementation Plan
[Implementation plan](https://github.com/jadetyrer/terminal_application/blob/master/documentation/implementation%20Plan.numbers)


### T1A2-11 Help File

#### Installation

###### MAC: OS

1. Open terminal (can be found by searching in 'Finder')
2. Clone the Github repository [here](https://github.com/jadetyrer/terminal_application)
3. Enter the `git clone {url}` to the terminal
4. `cd` into the directory with the cloned respository is saved
5. Type in `./build.sh` to the terminal to download the relevant gems and files
6. Start the program by typing `bespoke_nail_booker.rb {'salon name'}` 

#### Dependencies 
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
The menus that require only one selection are navigated via the keyboard arrows and selected by pressing enter. As the colour menu allows the user to input more than one option the colours required are selected via the space bar and entered via the enter key. 


**Customise and Randomise** 
This feature is selected via a menu "Customise" or "Randomise" will be selected by the user and following output will produce a different menu depending on the selection. The "customise" option will step through the menu options to pick the specific nail style defined by the customer. The "randomise" option will produce a unique style select "yes" if this is the customers preferred nail style or "no" to regenerate a new style. 

**Write to file**
The file will be written locally with the customer and order details after all details have ben selected. This will be executed automatically. If this needs to be edited open the file and edit the text directly.

#### T1A2-12 Test Application

A test was implemented when reading the nail shape and nail art data from the file. The tested each piece of data was pulled without white space to ensure that the files were pulling correctly. 

    nail_shape = read_as_file('nail_art.txt')

    nail_shape.each do |shape|
        puts '>#{shape}<'
    end

The second test created was to check the randomise feature of the application. The test takes two instances of a randomised order and ensured the output was producing different data for colours, nail shape and nail art in each instance. 

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

#### T1A2-14 Project Management Platform
[Implementation plan](https://github.com/jadetyrer/terminal_application/blob/master/documentation/implementation%20Plan.numbers)

#### T1A2-15 Automation Script
[Build Script](https://github.com/jadetyrer/terminal_application/blob/master/build.sh)


