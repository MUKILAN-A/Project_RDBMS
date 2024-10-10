USE Company_Management;

-- Insert some values for Employers
INSERT INTO Employer (EmployerID, EmployerName, StreetNo, StreetName, City, Province, PostalCode) VALUES 
(345678, 'Company A', 8, 'Eglinton Avenue', 'Toronto', 'ON', 'T5H 7U8'),
(123456, 'Jessica Lynn', 6, 'Dundas Avenue', 'Toronto', 'ON', 'U9A HY8'),
(768532, 'Adam Lee', 9, 'Sterling Avenue', 'Toronto', 'ON', 'T7H 9U2');

ALTER TABLE employee MODIFY Rate DECIMAL(10,2) DEFAULT NULL;

-- Insert some values for Employees
INSERT INTO Employee (EmployeeID, EmployeeFirstName, EmployeeLastName, Age, Gender, SIN, EmployeeType, Rate, EmployerID) VALUES 
(34567, 'Sarah', 'Mills', 28, 'Female', 572873619, 'Fulltime', 19.25, 345678),
(29473, 'Steven', 'Santos', 22, 'Male', 874835802, 'Partime', 18.25, 123456),
(19723, 'Millie', 'Brown', 22, 'Female', 902367280, 'Fulltime', 16.15, 345678),
(98424, 'Mike', 'James', 29, 'Male', 673231619, 'Partime', 20.25, 768532),
(23480, 'Stephanie', 'Joseph', 21, 'Female', 931341482, 'Fulltime', 15.25, NULL);

INSERT INTO Assignment (AssignmentNo, AssignmentName, AssignmentDescription, StartDate, EmployerID, EmployeeID, SIN) VALUES 
(1, 'Data pull', 'Pulling data into Excel', '2021-12-01', 345678, 34567, 572873619),
(2, 'Data analyze', 'Analyze data in PBI', '2021-12-02', 123456, 29473, 874835802),
(3, 'Data pipeline', 'Build a data pipeline in Azure', '2021-12-03', 345678, 19723, 902367280),
(4, 'Excel extraction', 'Use automation scripts to extract data in Excel', '2021-12-04', 768532, 98424, 673231619),
(5, 'SAP extraction', 'Pull data from the SAP systems', '2021-12-05', 345678, 23480, 931341482);  -- Updated EmployerID

INSERT INTO Assignment (AssignmentNo, AssignmentName, AssignmentDescription, StartDate, EmployerID, EmployeeID, SIN) VALUES 
(6, 'Invoice pull', 'Pulling invoice data into Excel', '2021-12-06', 345678, 34567, 572873619),
(7, 'Invoice analyze', 'Analyze invoice data in PBI', '2021-12-07', 123456, 29473, 874835802),
(8, 'Invoice pipeline', 'Build an invoice data pipeline in Azure', '2021-12-08', 345678, 19723, 902367280),
(9, 'Invoice extraction', 'Use automation scripts to extract invoice data in Excel', '2021-12-09', 768532, 98424, 673231619),
(10, 'Invoice segmentation', 'Segment invoice data', '2021-12-10', 345678, 23480, 931341482);  -- Changed NULL to a valid EmployerID

ALTER TABLE PerformanceEvaluation MODIFY Assessment VARCHAR(3);

INSERT INTO PerformanceEvaluation (WorkingHours, Assessment, Bonus, EmployerID, EmployeeID, SIN) VALUES 
(90, 96, 960, 345678, 34567, 572873619),
(50, 72, 720, 345678, 34567, 572873619),
(20, 76, 760, 123456, 29473, 874835802),
(30, 86, 860, 123456, 29473, 874835802),
(10, 79, 790, 345678, 19723, 902367280),
(32, 98, 980, 345678, 19723, 902367280),
(80, 81, 810, 768532, 98424, 673231619),
(30, 82, 820, 768532, 98424, 673231619),
(27, 66, 660, NULL, 23480, 931341482),  -- Check if EmployerID can be NULL
(90, 99, 990, NULL, 23480, 931341482);  -- Check if EmployerID can be NULL

INSERT INTO WorkingOn (EmployeeID, SIN, AssignmentNo, AssignmentName) VALUES 
(34567, 572873619, 1, 'Data pull'),
(29473, 874835802, 2, 'Data analyze'),
(19723, 902367280, 3, 'Data pipeline'),
(98424, 673231619, 4, 'Excel Extraction'),
(23480, 931341482, 5, 'SAP Extraction'),
(34567, 572873619, 6, 'Invoice pull'),
(29473, 874835802, 7, 'Invoice analyze'),
(19723, 902367280, 8, 'Invoice pipeline'),
(98424, 673231619, 9, 'Invoice Extraction'),
(23480, 931341482, 10, 'Invoice Segmentation');