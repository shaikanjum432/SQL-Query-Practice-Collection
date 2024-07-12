--------ROW_NUMBER() Query----------

WITH cte AS
(
SELECT *, ROW_NUMBER() OVER(PARTITION BY MemberID, AccountID ORDER BY entrydate desc) as RowNumber
FROM AccountHistory
)
SELECT MemberID, AccountID, EntryDate, Amount FROM cte 
WHERE RowNumber = 1