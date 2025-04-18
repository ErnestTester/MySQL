-- Ernesto Gonzalez
Create database day1;
Use day1;


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(255),
    DeptID INT,
    Salary DECIMAL(10, 2)
);

CREATE TABLE Departments
 (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100)
);

INSERT INTO `day1`.`departments` (`DeptID`, `DeptName`) VALUES ('10', 'HR');
INSERT INTO `day1`.`departments` (`DeptID`, `DeptName`) VALUES ('20', 'IT');
INSERT INTO `day1`.`departments` (`DeptID`, `DeptName`) VALUES ('30', 'Finance');
INSERT INTO `day1`.`departments` (`DeptID`, `DeptName`) VALUES ('40', 'Marketing');


INSERT INTO `day1`.`employees` (`EmpID`, `EmpName`, `DeptID`, `Salary`) VALUES ('1', 'Alice', '10', '60000');
INSERT INTO `day1`.`employees` (`EmpID`, `EmpName`, `DeptID`, `Salary`) VALUES ('2', 'Bob', '10', '55000');
INSERT INTO `day1`.`employees` (`EmpID`, `EmpName`, `DeptID`, `Salary`) VALUES ('3', 'Charlie', '20', '70000');
INSERT INTO `day1`.`employees` (`EmpID`, `EmpName`, `DeptID`, `Salary`) VALUES ('4', 'David', '20', '50000');
INSERT INTO `day1`.`employees` (`EmpID`, `EmpName`, `DeptID`, `Salary`) VALUES ('5', 'Emma', '30', '60000');
