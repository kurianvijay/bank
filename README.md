# bank

#Setup:

Install bundler: gem install bundler
Install dependencies: bundle install
Testing - rspec


# Requirments:

`1- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
2- Deposits, withdrawal.
3- Account statement (date, amount, balance) printing.
4- Data can be kept in memory (it doesn't need to be stored to a database or anything).`


# Acceptance criteria:

` 1- Given a client makes a deposit of 1000 on 10-01-2012
  2- And a deposit of 2000 on 13-01-2012
  3- And a withdrawal of 500 on 14-01-2012
  4- When she prints her bank statement
  5- Then she would see`

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

# Test Suite:
Using rspec -
=> rspec --init

# User Stories:

`1 - As a User
  So that I can add money to my Account
  I want to be able to make a deposit of any amount.

 2 - As a User
  So that I can take money from my Account
  I want to be able to make a withdrawal of any amount.

 3 - As a User
  So I can see the balance in my bank Account
  I want to be able to print out my bank statement in the below format.

  date || credit || debit || balance
  14/01/2012 || || 500.00 || 2500.00
  13/01/2012 || 2000.00 || || 3000.00
  10/01/2012 || 1000.00 || || 1000.00
`

# Approach/Planning

# Create an account class that has the following methods in it:

  #initialize
- [ ] Initializes with 0 balance
- [ ] Initializes with an empty transaction_history []

  # deposit(amount)
- [ ] This method will allow a user the user to add in money to the account
- [ ] This will add the sum to any existing amount in the account
- [ ] Pushes the amount, date and balance to transaction_history

  # withdraw(amount)
- [ ] This method will allow the user to deduct money from the account
- [ ] This will deduct given amount from any existing amount
- [ ] Amount more than balance cannot be deducted - raise error
- [ ] Pushes the amount, date and balance to transaction_history

  # private methods
    #date_formatter - formats date as per requirments
    #amount_formatter - formats amount as per requirments

# Create a statement class which prints out the required information

  # initialize
- [ ] Initializes with an empty transactions [] that will receive Account.new.transaction_history

  # print
- [ ] A formatting method which will interpret/output the  transactions [] in a required output
