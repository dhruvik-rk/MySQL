CREATE TABLE Student_Master(
	# Primary Key, Auto Increment, Not Null 
	StudentID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (StudentID),
    
    # Unique Key, Not Null
    Enrollment_No VARCHAR(20) NOT NULL,
    UNIQUE KEY (Enrollment_No),
    
    # Not Null 
    Name VARCHAR(25) NOT NULL,
    
    # Do not allow SPI more than 10, Null 
    CPI DECIMAL(5, 2) CHECK (CPI <= 10),
    
    # Set Default value getdate(), Not Null 
    JoiningDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    # Do not allow Bklog less than 0, Not Null
    Bklog INT CHECK(Bklog>=0),
    
    # Foreign Key, Not Null
    CityID INT NOT NULL,
    FOREIGN KEY (CityID) REFERENCES City_Master(CityID),
    
    # Default value as ‘Gujarat’ in StateName to all new records If  no other value is Specified 
    StateName VARCHAR(50) DEFAULT 'Gujrat'
);

CREATE TABLE City_Master(
	# Primary Key, Auto Increment, Not Null
	CityID INT AUTO_INCREMENT NOT NULL,
    PRIMARY KEY (CityID),
    
    # Unique Key, Not Null
    CityName VARCHAR(20) NOT NULL,
    UNIQUE KEY (CityName),
    
    PinCode VARCHAR(10),
    STDCode VARCHAR(10)
);