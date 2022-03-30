##Transactions
This is the test project for transactions These transactions will store how much money we will receive from our customers in the input currency, and how much we will pay them out in the output currency.

### Requirements
All transactions need the following details:

- An identifier
- A customer ID showing who created the transaction
- Input amount and currency
- Output amount and currency
- Date of transaction
### Output
- POST /transactions: create a new transaction
- GET /transactions: list all transactions in the system
- GET /transactions/: get the specific transaction by ID

### Technology Used
- Ruby `version ruby 3.1.1p18 `
- Rails `version Rails 7.0.2.3
  `

### How to run the project
- Clone this repository
- Open terminal and `cd` to the cloned folder and install gems with `bundle install`
- Checkout to the `development` branch by `git checkout development`
- create the database by `bin/rails db:create`
- run migrations `bin/rails db:migrate`
- Run rails server `bin/rails server`
- Open up **postman or insomnia**
- View all transactions through `localhost:3000/api/transactions` 
- View a single transactions through localhost:3000/api/transactions/<id>` 
- Create a new transaction by using a **POST** request to `localhost:3000/api/transactions`


## To run tests
- Go to terminal and run `rspec`