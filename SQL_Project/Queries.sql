
-- Retrieve all employers located in Toronto
SELECT * FROM Employer WHERE City = 'Toronto';

-- Retrieve the employer with a specific EmployerID
SELECT * FROM Employer WHERE EmployerID = 345678;

-- Retrieve all male employees
SELECT * FROM Employee WHERE Gender = 'Male';

-- Retrieve the assignment with a specific AssignmentNo
SELECT * FROM Assignment WHERE AssignmentNo = 1;

-- Retrieve performance evaluations with a specific Assessment score
SELECT * FROM PerformanceEvaluation WHERE Assessment = 96;

-- Retrieve all entries in WorkingOn for a specific AssignmentNo
SELECT * FROM WorkingOn WHERE AssignmentNo = 2;



-- Retrieve all employees older than 21, ordered by EmployeeID in ascending order
SELECT * FROM Employee WHERE Age > 21 ORDER BY EmployeeID ASC;

-- Retrieve the Gender and EmployeeType of male part-time employees
SELECT Gender, EmployeeType FROM Employee WHERE Gender = 'Male' AND EmployeeType = 'Partime';

-- Retrieve Gender and EmployeeType for male part-time and female full-time employees
SELECT Gender, EmployeeType FROM Employee WHERE 
    (Gender = 'Male' AND EmployeeType = 'Partime') OR 
    (Gender = 'Female' AND EmployeeType = 'Fulltime');

-- Retrieve EmployeeID and EmployeeFirstName for employees whose first name is not 'Sarah'
SELECT EmployeeID, EmployeeFirstName FROM Employee WHERE EmployeeFirstName <> 'Sarah';



-- Retrieve all employers with StreetNo between 1 and 8
SELECT * FROM Employer WHERE StreetNo BETWEEN 1 AND 8;


-- Retrieve distinct EmployeeIDs with an Assessment greater than 5, ordered by EmployeeID
SELECT DISTINCT EmployeeID FROM PerformanceEvaluation WHERE Assessment > 5 ORDER BY EmployeeID;

-- Retrieve the average Bonus value with a descriptive label
SELECT 'Average Bonus is ', AVG(Bonus) FROM PerformanceEvaluation;

-- Retrieve the minimum, maximum, average, variance, and standard deviation of Bonus
SELECT MIN(Bonus), MAX(Bonus), AVG(Bonus), VARIANCE(Bonus), STDDEV(Bonus) FROM PerformanceEvaluation;

-- Retrieve EmployerID and average Bonus for each employer, only if their average Bonus is greater than the overall average Bonus
SELECT EmployerID, AVG(Bonus) FROM PerformanceEvaluation GROUP BY EmployerID HAVING AVG(Bonus) > (SELECT AVG(Bonus) FROM PerformanceEvaluation);


-- Retrieve all assignments with names starting with 'Data' or 'Invoice'
SELECT * FROM Assignment WHERE AssignmentName LIKE 'Data%' OR AssignmentName LIKE 'Invoice%';

-- Retrieve all entries in WorkingOn for assignments with names starting with 'Invoice'
SELECT * FROM WorkingOn WHERE AssignmentName LIKE 'Invoice%';


CREATE VIEW FemaleEmployees AS
SELECT Employee.EmployeeFirstName, Employee.EmployeeLastName, Employee.Age, WorkingOn.AssignmentName
FROM Employee
LEFT JOIN WorkingOn ON Employee.EmployeeID = WorkingOn.EmployeeID
WHERE Employee.Gender = 'Female'

UNION ALL

SELECT Employee.EmployeeFirstName, Employee.EmployeeLastName, Employee.Age, WorkingOn.AssignmentName
FROM Employee
RIGHT JOIN WorkingOn ON Employee.EmployeeID = WorkingOn.EmployeeID
WHERE Employee.Gender = 'Female';

SELECT * FROM FemaleEmployees;

CREATE VIEW TopPerformance AS
SELECT Employee.EmployeeFirstName, Employee.EmployeeLastName, PerformanceEvaluation.WorkingHours, PerformanceEvaluation.Bonus
FROM PerformanceEvaluation
INNER JOIN Employee ON Employee.EmployeeID = PerformanceEvaluation.EmployeeID
WHERE PerformanceEvaluation.Assessment > 5;


SELECT * FROM TopPerformance;