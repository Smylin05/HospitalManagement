CREATE TABLE Patients (
    patientId INT IDENTITY(1,1) PRIMARY KEY,
    firstName VARCHAR(60) NOT NULL,
    lastName VARCHAR(60) NOT NULL,
    dateOfBirth DATE NOT NULL,
    gender CHAR(1) NOT NULL,
    contactNumber VARCHAR(20) NOT NULL,
	Address VARCHAR(50)
);

CREATE TABLE Doctors (
    doctorId INT  PRIMARY KEY IDENTITY(100,1),
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    contactNumber VARCHAR(15) NOT NULL
);

CREATE TABLE Appointments (
    appointmentId INT IDENTITY(1,1) PRIMARY KEY,
    patientId INT NOT NULL,
    doctorId INT NOT NULL,
    appointmentDate DATETIME NOT NULL,
    description TEXT ,
    FOREIGN KEY (patientId) REFERENCES Patients(patientId),
    FOREIGN KEY (doctorId) REFERENCES Doctors(doctorId)
);

INSERT INTO Patients (firstName, lastName, dateOfBirth, gender, contactNumber) VALUES
('Christabell', 'Smylin', '1980-05-15', 'M', '12344947383'),
('John', 'Joseph', '1990-08-22', 'M', '5663722882'),
('Priya','Ram','2000-08-30','F','982910727');

INSERT INTO Doctors (firstName, lastName, specialization, contactNumber) VALUES
('Alice', 'Williams', 'Cardiology', '9456773892'),
('Bob', 'Miller', 'Dermatology', '9839479392'),
('Charlie', 'Brown', 'Neurology', '822991910');



