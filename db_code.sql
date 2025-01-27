-- Test Holati 1: Mijoz Qo'shish
INSERT INTO Customers (Name, Address, Phone, Email)
VALUES ('Ali Valiyev', 'Toshkent, Shayxontohur', '+998901234567', 'ali.valiyev@gmail.com');

-- Natija:
-- CustomerID | Name        | Address                | Phone         | Email
-- 1          | Ali Valiyev | Toshkent, Shayxontohur | +998901234567 | ali.valiyev@gmail.com

-- Test Holati 2: Xato E-mail Qo'shishga Urinish
INSERT INTO Customers (Name, Address, Phone, Email)
VALUES ('Hasan Hasanov', 'Toshkent, Chilonzor', '+998907654321', 'hasan.com');

-- Natija:
-- ERROR: Invalid email format.

-- Test Holati 3: Ob'ektga Xodim Biriktirish
INSERT INTO Employees (SiteID, Name, Position, Phone)
VALUES (1, 'Al Valyev', 'Muhandis', '+998901112233');

-- Natija:
-- EmployeeID | SiteID | Name       | Position   | Phone
-- 1          | 1      | Al Valyev | Muhandis   | +998901112233

-- Test Holati 4: Mavjud Bo'lmagan Ob'ektga Xodim Biriktirish
INSERT INTO Employees (SiteID, Name, Position, Phone)
VALUES (999, 'Test Employee', 'Test Position', '+998901112233');

-- Natija:
-- ERROR: Foreign key constraint fails.

-- Test Holati 5: O'rnatishni Qo'shish
INSERT INTO Installations (SiteID, ProductID, InstallationDate, Status)
VALUES (1, 1, '2023-10-01', 'Yakunlangan');

-- Natija:
-- InstallationID | SiteID | ProductID | InstallationDate | Status
-- 1              | 1      | 1         | 2023-10-01       | Yakunlangan

-- Test Holati 6: O'rnatish Holatini Yangilash
UPDATE Installations
SET Status = 'Jarayonda'
WHERE InstallationID = 1;

-- Natija:
-- InstallationID | SiteID | ProductID | InstallationDate | Status
-- 1              | 1      | 1         | 2023-10-01       | Jarayonda

-- Test Holati 7: Mijozni O'chirish
DELETE FROM Customers
WHERE CustomerID = 1;

-- Natija:
-- CustomerID | Name | Address | Phone | Email
-- (Hech qanday natija topilmadi)
