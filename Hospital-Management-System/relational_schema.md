-- Relational Schema

Patients(
    patient_id PRIMARY KEY,
    name,
    age,
    gender,
    contact_number,
    address
)

Doctors(
    doctor_id PRIMARY KEY,
    name,
    specialization,
    department
)

Appointments(
    appointment_id PRIMARY KEY,
    patient_id FOREIGN KEY REFERENCES Patients(patient_id),
    doctor_id FOREIGN KEY REFERENCES Doctors(doctor_id),
    appointment_date,
    status
)

-- Additional relations to be added:
-- Billing
-- Medical_Records
-- Pharmacy
-- Rooms
