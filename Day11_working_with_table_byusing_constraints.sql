-- Create hospital database
create database hospital;

use hospital;

-- Create Patients Table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    gender VARCHAR(10),
    phone VARCHAR(15) UNIQUE
);

-- Create Doctors Table
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(50) NOT NULL,
    salary INT CHECK (salary > 0)
);

-- Create Appointments Table with FOREIGN KEYS
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20) DEFAULT 'Pending',

    CONSTRAINT fk_patient FOREIGN KEY (patient_id)
    REFERENCES Patients(patient_id),

    CONSTRAINT fk_doctor FOREIGN KEY (doctor_id)
    REFERENCES Doctors(doctor_id)
);

-- Insert Data
INSERT INTO Patients VALUES
(1, 'Tanveer', 22, 'Male', '9876543210'),
(2, 'Rahul', 25, 'Male', '9123456780');

INSERT INTO Doctors VALUES
(101, 'Dr. Sharma', 'Cardiology', 50000),
(102, 'Dr. Reddy', 'Orthopedic', 45000);

INSERT INTO Appointments (appointment_id, patient_id, doctor_id)
VALUES
(1001, 1, 101),
(1002, 2, 102);

-- View Data (JOIN)
SELECT p.name AS patient_name, d.name AS doctor_name, a.appointment_date, a.status
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id;

-- Update Data
UPDATE Appointments
SET status = 'Completed'
WHERE appointment_id = 1001;

-- Delete Data
DELETE FROM Patients
WHERE patient_id = 2;

select * from  Doctors;