
use hospital;
-- Create Tables
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50)
);

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT
);

-- Insert Data
INSERT INTO Patients VALUES
(1, 'Tanveer'),
(2, 'Rahul'),
(3, 'Aman');

INSERT INTO Doctors VALUES
(101, 'Dr. Sharma'),
(102, 'Dr. Reddy');

INSERT INTO Appointments VALUES
(1001, 1, 101),
(1002, 2, 102);

-- 1. INNER JOIN (common records)
SELECT p.name AS patient, d.doctor_name
FROM Appointments a
INNER JOIN Patients p ON a.patient_id = p.patient_id
INNER JOIN Doctors d ON a.doctor_id = d.doctor_id;

-- 2. LEFT JOIN (all patients, matched appointments)
SELECT p.name, a.appointment_id
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id;

-- 3. RIGHT JOIN (all appointments, matched patients)
SELECT p.name, a.appointment_id
FROM Patients p
RIGHT JOIN Appointments a ON p.patient_id = a.patient_id;

-- 4. FULL JOIN (all records from both tables)
SELECT p.name, a.appointment_id
FROM Patients p
FULL OUTER JOIN Appointments a 
ON p.patient_id = a.patient_id;

-- 5. CROSS JOIN (all combinations)
SELECT p.name, d.doctor_name
FROM Patients p
CROSS JOIN Doctors d;