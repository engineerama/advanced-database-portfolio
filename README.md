MIT 8103 Evidence Plan
Name : Adekanye Michael Adeoye
Case Study :MBA Online Marketplace
Purpose :This evidence plan identifies the implementation files, screenshots, outputs and explanations that will be produced for each portfolio activity.# advanced-database-portfolio
MIT Advanced Database Systems Practical

Portfolio 1: Database Design and Modelling
Implementation Evidence
ER diagram
Relational schema
PostgreSQL CREATE TABLE script
Primary and foreign key definitions
UNIQUE, NOT NULL and CHECK constraints
Sample data script
Normalisation explanation up to Third Normal Form

Planned Files:
portfolio-1-database-design/schema.sql
portfolio-1-database-design/seed-data.sql
portfolio-1-database-design/er-diagram.png
portfolio-1-database-design/README.md

Screenshots:
Successful table creation
PostgreSQL database object tree
Tables, columns and constraints
Sample records

Verification:
The schema will be executed in PostgreSQL. Successful table creation, foreign-key behaviour and constraint enforcement will be tested.

Portfolio 2: Query Processing and Optimisation
Implementation Evidence
Customer order-history query
Best-selling products query
Category-sales query
Index creation
Execution-plan comparison
Performance analysis

Planned Files:
portfolio-2-query-optimisation/queries.sql
portfolio-2-query-optimisation/indexes.sql
portfolio-2-query-optimisation/README.md

Screenshots:
Query results
EXPLAIN ANALYZE result before indexing
EXPLAIN ANALYZE result after indexing
Execution time and scan type

Verification:
The queries will be tested against a sufficiently large dataset. Planning time, execution time, scan type and rows processed will be compared.

Portfolio 3: Transactions and Concurrency
Implementation Evidence
Successful transaction with COMMIT
Failed or cancelled transaction with ROLLBACK
Row-level locking
Two-session concurrency demonstration
Isolation-level demonstration

Planned Files:
portfolio-3-transactions-concurrency/transactions.sql
portfolio-3-transactions-concurrency/concurrency-test.sql
portfolio-3-transactions-concurrency/README.md

Screenshots:
Stock value before the transaction
Stock value after COMMIT
Stock value restored after ROLLBACK
Session A holding a row lock
Session B waiting for the lock
Session B continuing after lock release

Verification:
Two PostgreSQL sessions will be used to demonstrate locking and controlled concurrent updates.

Portfolio 4: NoSQL and Advanced Data Models

Implementation Evidence:
MongoDB order document
Insert operations
Customer order query
Order-status query
Aggregation query
MongoDB index
Relational and document-model comparison

Planned Files:
portfolio-4-nosql/mongodb-data.json
portfolio-4-nosql/queries.js
portfolio-4-nosql/README.md

Screenshots:
MongoDB collection
Inserted documents
Query results
Aggregation output
Index information

Verification:
The documents and queries will be executed in MongoDB or MongoDB Compass. The results will be compared with the equivalent relational implementation.

Portfolio 5: Distributed and Cloud Databases

Implementation Evidence:
Distributed database architecture
Primary and replica design
Replication explanation
Partitioning or sharding strategy
Availability and failover approach
Backup and recovery approach
Consistency decisions
Cloud deployment proposal

Planned Files:
portfolio-5-distributed-cloud/architecture/database-architecture.png
portfolio-5-distributed-cloud/configuration/cloud-configuration.md
portfolio-5-distributed-cloud/README.md

Screenshots:
Architecture diagram
Cloud database configuration, if implemented
Backup settings
High-availability settings
Monitoring or database status
Verification
The architecture will explain how the marketplace handles availability, read scaling, data growth, consistency, backup and recovery.

Final Documentation:
Planned Evidence
Two-to-three-page LMS summary
GitHub repository link
Technical reflection

References
AI Use Declaration
Planned Files
documentation/final-summary.docx
documentation/reflection.md
documentation/ai-use-declaration.md

Evidence Quality Rules
Each item of evidence will include:

Objective
Implementation:
Screenshot or output
Technical explanation
Result
Reflection
All screenshots will be original and produced from the implemented system. Passwords, connection strings, tokens and other secrets will be removed.
