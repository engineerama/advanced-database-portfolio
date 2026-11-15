Portfolio 3: Transactions and Concurrency
Implementation Evidence
Successful transaction with COMMIT
Failed or cancelled transaction with ROLLBACK
Row-level locking
Two-session concurrency demonstration
Isolation-level demonstration
Planned Files
portfolio-3-transactions-concurrency/transactions.sql
portfolio-3-transactions-concurrency/concurrency-test.sql
portfolio-3-transactions-concurrency/README.md
Screenshots
Stock value before the transaction
Stock value after COMMIT
Stock value restored after ROLLBACK
Session A holding a row lock
Session B waiting for the lock
Session B continuing after lock release
Verification
Two PostgreSQL sessions will be used to demonstrate locking and controlled concurrent updates.

