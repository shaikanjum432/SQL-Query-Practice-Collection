# Comma-Separated Values Generation in SQL Server

In this project, I created a SQL Server script to generate reports that provide comma-separated values from an input table. The goal was to retrieve these values efficiently, avoiding performance issues related to large datasets.

**Input Table**
This table contains details of training schedules:

![image](https://github.com/user-attachments/assets/7f80b61d-11b4-4dce-9d28-eea785f42759)

**Output Table**
This table displays the training details with weekdays combined into a single column with comma-separated values:

![image](https://github.com/user-attachments/assets/5ecc4f57-447f-41fc-8393-3fcb344a42d7)

## How did I do it?

1. **Table Creation**:
    - Created a table to store traning schedules.
    - [CreateTable.sql](Comma-Separated/CreateTable.sql)

2. **Data Insertion**:
    - Inserted sample data into the table to simulate real-world transactions.
    - [InsertData.sql](Comma-Separated/InsertData.sql)

3. **Query Execution**:
    - Used the "STUFF" function combined with "FOR XML PATH" to generate the comma-separated values for weekdays.
    - [GenerateCommaSeparatedWeekdays.sql](Comma-Separated/GenerateCommaSeparatedWeekdays.sql)

## What was the impact?
- **Performance Improvement**: By using the STUFF function and FOR XML PATH instead of iterative concatenation, the query performance improved significantly, especially when dealing with large datasets.
- **Accurate Reporting**: Ensured that stakeholders received the correct comma-separated values for weekdays, crucial for planning and logistics.
- **Scalability**: The solution is scalable and can handle large volumes of data efficiently, making it suitable for real-time applications.
