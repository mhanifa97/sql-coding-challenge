CREATE DATABASE City Hospital;
USE City Hospital;
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    AdmissionDate DATE
);

ALTER TABLE Patients
ADD COLUMN DoctorAssigned VARCHAR(50);

ALTER TABLE Patients
MODIFY COLUMN PatientName VARCHAR(150);

ALTER TABLE Patients
RENAME TO Patient_Info;

TRUNCATE TABLE Patient_Info;
DROP TABLE Patient_Info;
