-- Advanced SQL Queries
-- Work in Progress

-- 1. Count total appointments handled by each doctor

SELECT d.name,
       COUNT(a.appointment_id) AS total_appointments
FROM Doctors d
JOIN Appointments a
ON d.doctor_id = a.doctor_id
GROUP BY d.name;


-- 2. Find doctors with more than 10 appointments

SELECT doctor_id,
       COUNT(*) AS appointment_count
FROM Appointments
GROUP BY doctor_id
HAVING COUNT(*) > 10;


-- 3. Rank doctors by number of appointments

SELECT doctor_id,
       COUNT(*) AS total_appointments,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS ranking
FROM Appointments
GROUP BY doctor_id;


-- TODO:
-- Add Common Table Expressions (CTEs)
-- Add Window Functions
-- Add Query Optimization Examples
