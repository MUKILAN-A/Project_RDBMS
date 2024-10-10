CREATE DATABASE Company_Management;
Use Company_Management;


CREATE TABLE Employer (
    EmployerID      INT NOT NULL,                                       
    EmployerName    VARCHAR(50) NOT NULL,     
    StreetNo        INT CHECK (StreetNo BETWEEN 1 AND 9999),
    StreetName      VARCHAR(25) NOT NULL,
    City            VARCHAR(25) NOT NULL,
    Province        CHAR(2) NOT NULL,
    PostalCode      VARCHAR(10) NOT NULL,           
    PRIMARY KEY     (EmployerID)
    );
    
    CREATE TABLE Employee (
    EmployeeID          INT NOT NULL,            
    EmployeeFirstName   VARCHAR(25) NOT NULL,
    EmployeeLastName    VARCHAR(25) NOT NULL,
    Age                 INT CHECK (Age BETWEEN 18 AND 70),
    Gender              VARCHAR(25) NOT NULL,
    SIN                 INT NOT NULL,            
    EmployeeType        VARCHAR(25) NOT NULL,
    Rate                DECIMAL CHECK (Rate >= 14.35),
    EmployerID          INT,
    PRIMARY KEY         (EmployeeID, SIN),
    FOREIGN KEY         (EmployerID) REFERENCES Employer(EmployerID)
);

CREATE TABLE Assignment (
    AssignmentNo            INT NOT NULL,       
    AssignmentName          VARCHAR(50) NOT NULL,
    AssignmentDescription   VARCHAR(255),
    StartDate               DATE NOT NULL,
    EmployerID              INT,
    EmployeeID              INT,
    SIN                     INT,
    PRIMARY KEY             (AssignmentNo, AssignmentName),
    FOREIGN KEY             (EmployeeID, SIN) REFERENCES Employee(EmployeeID, SIN),
    FOREIGN KEY             (EmployerID) REFERENCES Employer(EmployerID)
);

CREATE TABLE PerformanceEvaluation (
    WorkingHours        INT CHECK (WorkingHours BETWEEN 1 AND 100),
    Assessment          CHAR NOT NULL,
    Bonus               INT,
    EmployerID          INT,
    EmployeeID          INT,
    SIN                 INT,
    PRIMARY KEY         (Assessment),
    FOREIGN KEY         (EmployerID) REFERENCES Employer(EmployerID),
    FOREIGN KEY         (EmployeeID, SIN) REFERENCES Employee(EmployeeID, SIN)
);

CREATE TABLE WorkingOn (
    EmployeeID          INT,
    SIN                 INT,
    AssignmentNo        INT,
    AssignmentName      VARCHAR(50),
    PRIMARY KEY         (EmployeeID, SIN, AssignmentNo, AssignmentName),
    FOREIGN KEY         (EmployeeID, SIN) REFERENCES Employee(EmployeeID, SIN),
    FOREIGN KEY         (AssignmentNo, AssignmentName) REFERENCES Assignment(AssignmentNo, AssignmentName)
);