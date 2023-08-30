SELECT patient_id,
    patient_name,
    conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%';
-- Select patients whom conditions contain the 'DIAB1' prefix
