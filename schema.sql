-- SQL Server sample: table, index, and a parameterized stored procedure.
CREATE TABLE dbo.Orders (Id INT IDENTITY(1,1) PRIMARY KEY, Customer NVARCHAR(100) NOT NULL, Total DECIMAL(10,2) NOT NULL, Paid BIT NOT NULL DEFAULT 0);
CREATE INDEX IX_Orders_Customer ON dbo.Orders (Customer);
GO
CREATE PROCEDURE dbo.GetPaidOrders AS SELECT Id, Customer, Total FROM dbo.Orders WHERE Paid = 1;
GO
