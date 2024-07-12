------Insert Records----------
select * from AccountHistory

INSERT INTO AccountHistory (MemberID, AccountID, EntryDate, Amount)
VALUES
(1, 1, '2024-06-28', 120.00),
(1, 1, '2024-06-30', 140.00),
(2, 1, '2024-06-28', 450.00),
(2, 1, '2024-06-29', 480.00),
(2, 2, '2024-06-30', 300.00),
(3, 3, '2024-06-30', 200.00);