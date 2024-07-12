In this project, I created a SQL Server script to generate reports from a AccontHistory table. The goal was to retrieve the latest transaction for each account in an efficient manner, avoiding performance issues related to large datasets.

1. **Account History Table**: This table contains multiple transactions for each member and account.

![image](https://github.com/user-attachments/assets/951e7d6c-cd5f-40c8-93bd-e3d978e24d14)

2. **Output Table**: This table displays the latest transaction for each combination of member and account id based on the most recent entry date.

![image](https://github.com/user-attachments/assets/1c3788a0-9312-4ae7-bf99-fad55f4823a2)

## How did I do it?

1. **Table Creation**:
    - Created a table to store sales transactions.
    - The table includes columns for memberID, accountID, entry date, and amount.
    - [CreateTable.sql](SQL-ROW_NUMBER()/CreateTable.sql)

2. **Data Insertion**:
    - Inserted sample data into the table to simulate real-world transactions.
    - [InsertData.sql](SQL-ROW_NUMBER()/InsertData.sql)

3. **Query Execution**:
    - Used the `ROW_NUMBER()` function to partition the data by member and account id, ordering by entry date in descending order.
    - Selected the latest transaction for each account by filtering where `ROW_NUMBER` equals 1.
    - [RowNumberQuery.sql](SQL-ROW_NUMBER()/Row_number()Query.sql)

## What was the impact?

- **Performance Improvement**: By using the `ROW_NUMBER()` function instead of `GROUP BY` and aggregate functions, the query performance improved significantly, especially when dealing with large datasets.
- **Accurate Reporting**: Ensured that stakeholders received the most recent transaction information, crucial for timely and accurate decision-making.
- **Scalability**: The solution is scalable and can handle large volumes of data efficiently, making it suitable for real-time applications.
