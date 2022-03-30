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