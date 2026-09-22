-- 1. Physicians in alphabetical order
SELECT name AS physician_name
FROM Physician
ORDER BY name;

-- 2. Fullname of male patients
SELECT CONCAT(name, ' ', surname) AS patient_fullname, gender
FROM Patient
WHERE gender = 'Male';

-- 3. Head nurses who are registered
SELECT name, position, registered
FROM Nurse
WHERE position = 'Head Nurse' AND registered = 'Yes';

-- 4. Nurses who are Team Leader OR not registered
SELECT name, position, registered
FROM Nurse
WHERE position = 'Team Leader' OR registered = 'No';

-- 5. Average procedure cost
SELECT AVG(cost) AS avg_cost
FROM Procedures;

-- 6. Procedures costing more than 2000
SELECT name AS procedure_name, cost AS procedure_cost
FROM Procedures
WHERE cost > 2000;

-- 7. Update patient with id = 5
UPDATE Patient
SET name = 'Robert', surname = 'Fernandez'
WHERE patient_id = 5;

-- 8. Drop phone column
ALTER TABLE Patient DROP COLUMN phone;

-- 9. Second most expensive procedure
SELECT name, cost
FROM Procedures
WHERE cost = (
    SELECT MAX(cost)
    FROM Procedures
    WHERE cost < (SELECT MAX(cost) FROM Procedures)
);

-- 10. Patients whose name starts with A
SELECT CONCAT(name, ' ', surname) AS full_name, gender
FROM Patient
WHERE name LIKE 'A%';

-- 11. Patients with 3rd letter 'M'
SELECT CONCAT(name, ' ', surname) AS full_name, gender
FROM Patient
WHERE name LIKE '__M%';

-- 12. Patients name starts with J and ends with Z
SELECT CONCAT(name, ' ', surname) AS full_name, gender
FROM Patient
WHERE name LIKE 'J%Z';

-- 13. Patients with IDs 11 to 20
SELECT *
FROM Patient
WHERE patient_id BETWEEN 11 AND 20;

-- 14. Physicians who are head of departments
SELECT p.name AS doctor_name, d.dept_name
FROM Physician p
JOIN Department d ON p.employeeid = d.head;

-- 15. Patients and their primary check physician
SELECT CONCAT(p.name, ' ', p.surname) AS patient_name,
       ph.name AS primary_physician
FROM Patient p
LEFT JOIN Physician ph ON p.primary_check = ph.employeeid;

-- 16. Physicians and their affiliated departments (primary affiliation)
SELECT p.name AS physician_name, d.dept_name AS department_name
FROM Physician p
JOIN affiliated_with aw ON p.employeeid = aw.physicianid
JOIN Department d ON aw.departmentid = d.department_id
WHERE aw.primaryaffiliation = 't';

-- 17. Physician, position, and affiliated department
SELECT p.name AS physician_name, p.position, d.dept_name AS department_name
FROM Physician p
JOIN affiliated_with a ON p.employeeid = a.physicianid
JOIN Department d ON a.departmentid = d.department_id;

-- 18. Patients, their physician, diagnosis & prescription
SELECT ph.employeeid,
       ph.name AS physician_name,
       ph.position,
       p.patient_id,
       CONCAT(p.name, ' ', p.surname) AS patient_name,
       p.gender,
       pd.diagnosis,
       pd.prescription
FROM Patient_Diagnosis pd
JOIN Physician ph ON pd.physician_id = ph.employeeid
JOIN Patient p ON p.patient_id = pd.patient_id;

-- 19. Maximum procedure cost
SELECT name, cost
FROM Procedures
WHERE cost = (SELECT MAX(cost) FROM Procedures);

-- 20. Patients with diagnosis = Chronic Pain
SELECT *
FROM Patient
WHERE patient_id IN (
    SELECT patient_id
    FROM Patient_Diagnosis
    WHERE diagnosis = 'Chronic Pain'
);

-- 21. Procedures costing above average
SELECT name, cost
FROM Procedures
WHERE cost > (SELECT AVG(cost) FROM Procedures);

-- 22. Procedures costing below average
SELECT name, cost
FROM Procedures
WHERE cost < (SELECT AVG(cost) FROM Procedures);

-- 23. Physicians who are Head Chief or Senior
SELECT *
FROM Physician
WHERE position LIKE '%Senior%' OR position LIKE '%Head Chief%';

-- 24. Physicians without primary affiliation
SELECT employeeid, name, position
FROM Physician
WHERE employeeid IN (
    SELECT physicianid
    FROM affiliated_with
    WHERE primaryaffiliation = 'f'
);
