-- Sample Data Inserts

INSERT INTO Patients
VALUES
(1, 'Rahul Sharma', 35, 'Male', '9876543210', 'Kanpur'),
(2, 'Priya Singh', 28, 'Female', '9876543211', 'Lucknow'),
(3, 'Aman Verma', 42, 'Male', '9876543212', 'Delhi');


INSERT INTO Doctors
VALUES
(101, 'Dr. Anjali Mehta', 'Cardiology', 'Cardiology'),
(102, 'Dr. Rajesh Kumar', 'Orthopedics', 'Orthopedics'),
(103, 'Dr. Neha Gupta', 'Neurology', 'Neurology');


INSERT INTO Appointments
VALUES
(1001, 1, 101, '2026-06-20', 'Completed'),
(1002, 2, 103, '2026-06-21', 'Scheduled'),
(1003, 3, 102, '2026-06-22', 'Completed');
