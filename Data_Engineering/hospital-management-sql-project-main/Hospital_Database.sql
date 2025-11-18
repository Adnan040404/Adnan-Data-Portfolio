#CREATE DATABASE
CREATE DATABASE HOSPITAL_MANAGMENT_SYSTEM;

#Use DATABASE
USE HOSPITAL_MANAGMENT_SYSTEM;

#CREATION OF TABLE & ROW INSERTION 

#Physician Table
CREATE TABLE Physician(
employeeid INT PRIMARY KEY,
name VARCHAR(150) NOT NULL,
position VARCHAR(150) NOT NULL
);

INSERT INTO Physician(employeeid,name,position) 
VALUES
(1,'Dr.Adam Turner','Staff Internist'),
(2,'Dr.Sophia Clark','Attending Physician'),
(3,'Dr.Daniel Rivera','Surgical Attending Physician'),
(4,'Dr.Michael Hughes','Senior Attending Physician'),
(5,'Dr.Elizabeth Scott','Head Chief of Pulmonology'),
(6,'Dr.Henry Brooks','Surgical Attending Physician'),
(7,'Dr.Aaron Patel','Surgical Attending Physician'),
(8,'Dr.Matthew Hayes','Resident'),
(9,'Dr.Lucy Carter','Attending Psychiatrist'),
(10,'Dr.Nathan Gray','Senior Attending Nephrologist'),
(11,'Dr.Isabella Foster','Resident'),
(12,'Dr.Liam Bennett','Senior Attending Gynecologist'),
(13,'Dr.Evelyn Ward','Cardiologist'),
(14,'Dr.Jacob Reed','Assistant Intensivist'),
(15,'Dr.Charlotte Adams','Senior ENT Surgeon'),
(16,'Dr.Oliver Perez','Junior Resident'),
(17,'Dr.Scarlett Evans','Assistant Orthopedic Surgeon'),
(18,'Dr.William Morris','Head Chief of Gastroenterology'),
(19,'Dr.Harper Mitchell','Assistant Neuro Surgeon'),
(20,'Dr.James Kelly','Junior Intensivist'),
(21,'Dr.Mila Cooper','Head Chief of Orthopedics'),
(22,'Dr.Ethan Watson','Head Chief of Neonatal'),
(23,'Dr.Lucas Bailey','Staff Internist'),
(24,'Dr.Sophia Allen','Assistant Physiotherapist'),
(25,'Dr.Leo Torres','Senior Intensivist'),
(26,'Dr.Amelia Hughes','Assistant Gastro Surgeon'),
(27,'Dr.Benjamin Flores','Head Chief of Physiotherapy'),
(28,'Dr.Avery Simmons','Senior Attending Urologist'),
(29,'Dr.Mason Diaz','Intensivist'),
(30,'Dr.Emma Parker','Senior Attending Neurologist'),
(31,'Dr.Samuel Roberts','Senior Resident'),
(32,'Dr.Maya King','Junior Resident'),
(33,'Dr.Elijah James','Assistant Neonatologist'),
(34,'Dr.Hazel Brown','Senior Resident'),
(35,'Dr.Sebastian Hall','Head Chief of Urology');

# Affiliated_with
CREATE TABLE affiliated_with(
physicianid INT NOT NULL,
departmentid INT NOT NULL,
primaryaffiliation VARCHAR(1) NOT NULL,
FOREIGN KEY(physicianid) references Physician(employeeid),
Foreign Key(departmentid) references department(department_id)
);

INSERT INTO affiliated_with(physicianid,departmentid,primaryaffiliation) 
VALUES
(1,1,'t'),
(2,1,'t'),
(3,1,'f'),
(3,2,'t'),
(4,1,'t'),
(5,10,'t'),
(6,2,'t'),
(7,1,'f'),
(7,2,'t'),
(8,1,'t'),
(9,3,'t'),
(10,5,'t'),
(11,4,'f'),
(12,12,'t'),
(13,4,'t'),
(14,14,'f'),
(15,9,'t'),
(16,10,'f'),
(17,15,'t'),
(18,11,'t'),
(19,7,'t'),
(20,14,'f'),
(21,15,'t'),
(22,13,'t'),
(23,14,'f'),
(24,8,'t'),
(25,14,'t'),
(26,11,'f'),
(27,8,'t'),
(28,6,'t'),
(29,14,'t'),
(30,7,'t'),
(31,5,'f'),
(32,4,'f'),
(33,13,'t'),
(34,11,'t'),
(35,6,'t');

#Department Table
create table department(
department_id int Primary Key ,
dept_name VARCHAR(150) NOT NULL,
head int not null,
Foreign Key(head) references Physician(employeeid)
);

Insert into department(department_id,dept_name,head)
values
(1,'General Medicine',4),
(2,'Surgery',7),
(3,'Psychiatry',9),
(4,'Cardiology',13),
(5,'Nephrology',10),
(6,'Urology',35),
(7,'Neurology',30),
(8,'Physiotherapy',27),
(9,'ENT',15),
(10,'Pulmonology',5),
(11,'Gastroenterology',18),
(12,'Gynecology',12),
(13,'Neonatal',22),
(14,'Critical Care',25),
(15,'Orthopedics',21);

# Nurse Table
CREATE TABLE Nurse(
nurse_id INT NOT NULL,
name VARCHAR(150) NOT NULL,
position VARCHAR(150) NOT NULL,
registered VARCHAR(10) NOT NULL
);

INSERT INTO Nurse(nurse_id,name,position,registered)
VALUES 
(1,'Emily Johnson','Head Nurse','Yes'),
(2,'Hannah Davis','Nurse','Yes'),
(3,'Daniel Lewis','Nurse','No'),
(4,'Sophia White','Team Leader','No'),
(5,'Ava Thompson','Sister IR','Yes'),
(6,'Mia Harris','Nurse','Yes'),
(7,'Grace Clark','Head Nurse','Yes'),
(8,'James Martin','Nurse','No'),
(9,'Ella Walker','Sister IR','No'),
(10,'Jack Hall','Head Nurse','Yes'),
(11,'Amelia King','Team Leader','Yes'),
(12,'Benjamin Allen','Nurse','No'),
(13,'Harper Young','NS Supdt','Yes'),
(14,'Evelyn Hernandez','Nurse','No'),
(15,'Liam Wright','Nurse','Yes'),
(16,'Olivia Lopez','Nurse','No'),
(17,'Noah Hill','Team Leader','Yes'),
(18,'Aiden Scott','Nurse','No'),
(19,'Sophia Green','Sister IR','Yes'),
(20,'Lucas Adams','Nurse','Yes'),
(21,'Charlotte Baker','Head Nurse','Yes'),
(22,'Mason Gonzalez','Nurse','No'),
(23,'Ella Perez','Sister IR','Yes'),
(24,'Jacob Mitchell','Team Leader','Yes'),
(25,'Avery Carter','Nurse','No'),
(26,'Scarlett Roberts','Nurse','No'),
(27,'William Turner','Head Nurse','No'),
(28,'Chloe Phillips','Nurse','Yes'),
(29,'Henry Campbell','Team Leader','Yes'),
(30,'Zoe Parker','Nurse','No'),
(31,'Samuel Evans','Head Nurse','Yes'),
(32,'Aria Stewart','Nurse','Yes'),
(33,'Levi Morris','Sister IR','No');

# Patient Table
CREATE TABLE Patient(
patient_id INT Primary key auto_increment,
name VARCHAR(100) NOT NULL,
surname VARCHAR(100) NOT NULL,
address VARCHAR(100) NOT NULL,
Gender VARCHAR(150) NOT NULL,
phone VARCHAR(150) NOT NULL,
primary_check INT NOT NULL,
FOREIGN KEY(PRIMARY_CHECK) REFERENCES Physician(employeeid)
);

INSERT INTO Patient(Patient_id,name,surname,address,Gender,phone,primary_check)
VALUES
(01,'Ethan','James','10 Lake View','Male','555-1000-111',2),
(02,'Sophia','Cruz','22 Green Valley','Female','555-1000-222',2),
(03,'Liam','Harris','33 Oak Drive','Male','555-1000-333',9),
(04,'Ava','Nelson','44 River Road','Female','555-1000-444',17),
(05,'Mason','Wright','55 Hill Street','Male','555-1000-555',24),
(06,'Isabella','Gray','66 Sunset Blvd','Female','555-1000-666',7),
(07,'Noah','Reed','77 Maple Avenue','Male','555-1000-777',13),
(08,'Olivia','Price','88 Pine Lane','Female','555-1000-888',25),
(09,'Lucas','Bailey','99 Birch Road','Male','555-1000-999',28),
(10,'Amelia','Cook','101 Rose Street','Female','555-1001-010',19),
(11,'Elijah','Foster','202 Cedar Ave','Male','555-1001-020',5),
(12,'Mia','Stevens','303 Cherry Lane','Female','555-1001-030',33),
(13,'Alexander','Ward','404 Apple Blvd','Male','555-1001-040',3),
(14,'Harper','Long','505 Orange Drive','Female','555-1001-050',18),
(15,'Benjamin','Brooks','606 Grape Lane','Male','555-1001-060',6),
(16,'Ella','Bell','707 Mango Street','Female','555-1001-070',19),
(17,'James','Murray','808 Lemon Ave','Male','555-1001-080',15),
(18,'Scarlett','Diaz','909 Peach Street','Female','555-1001-090',26),
(19,'Henry','Cole','111 Water St','Male','555-1001-111',6),
(20,'Chloe','Hughes','222 River St','Female','555-1001-222',20),
(21,'Michael','Flores','333 Sky Road','Male','555-1001-333',28),
(22,'Aria','Watson','444 Green St','Female','555-1001-444',6),
(23,'Daniel','Torres','555 Pineapple St','Male','555-1001-555',25),
(24,'Victoria','Howard','666 Strawberry Rd','Female','555-1001-666',19),
(25,'Joseph','Mitchell','777 Banana Blvd','Male','555-1001-777',24),
(26,'Zoe','Bennett','888 Blueberry Ave','Female','555-1001-888',28),
(27,'Jackson','Parker','999 Blackberry Rd','Male','555-1001-999',27),
(28,'Lily','Bryant','1010 Cranberry St','Female','555-1002-010',6),
(29,'Matthew','Jenkins','1111 Olive St','Male','555-1002-111',33),
(30,'Hannah','Harrison','1212 Palm St','Female','555-1002-222',10),
(31,'David','Anderson','1313 Cedar St','Male','555-1002-333',5),
(32,'Sofia','Morgan','1414 Oak St','Female','555-1002-444',18),
(33,'Christopher','Peterson','1515 Walnut St','Male','555-1002-555',2),
(34,'Avery','Ross','1616 Cherry St','Female','555-1002-666',13),
(35,'Samuel','Scott','1717 Elm St','Male','555-1002-777',20),
(36,'Brooklyn','Perez','1818 Maple St','Female','555-1002-888',21),
(37,'Logan','Adams','1919 Birch St','Male','555-1002-999',9),
(38,'Leah','Sanchez','2020 Pine St','Female','555-1003-010',30),
(39,'Carter','Phillips','2121 Rose St','Male','555-1003-111',15);

# Patient_Diagnosis Table
CREATE TABLE PATIENT_DIAGNOSIS(
Diagnosis VARCHAR(150) NOT NULL,
Prescription VARCHAR(150) NOT NULL,
Patient_ID INT NOT NULL,
Physician_id INT NOT NULL,
FOREIGN KEY(Patient_id) references Patient(Patient_id),
FOREIGN KEY(Physician_id) references Physician(employeeid)
);

INSERT INTO PATIENT_DIAGNOSIS(Diagnosis,Prescription,Patient_ID,Physician_id)
VALUES
('Hypertension','Amlodipine',1,2),
('Arthritis','Ibuprofen & Diclofenac',4,17), 
('Anxiety Disorder','Sertraline',3,9),     
('Muscular Dystrophy','Prednisone',5,24),                            
('Asthma','Montelukast',2,2),        
('IgA Nephropathy','Cyclophosphamide',30,10),     
('Chronic Pain','Gabapentin',6,7),    
('Acoustic neuroma','Stereotactic Radiosurgery',7,13),     
('Septic Shock','Norepinephrine',8,25),   
('Kidney Stones','Tamsulosin',9,28),     
('Parkinsons Disease','Levodopa',10,19),  
('COPD','Tiotropium',11,5), 
('Neonatal Jaundice','Exchange Transfusion',12,33),  
('Chronic Pain','Pregabalin',13,3),       
('Gallstones','ERCP',14,18),        
('Type 1 Diabetes','Insulin Glargine',15,6),                                  
('Migraine','Ergotamine',16,19),      
('Tonsillitis','Clindamycin',17,15),         
('IBD','Azathioprine',18,26),       
('CAD','Clopidogrel',19,6),     
('COPD','Budesonide',20,20),   
('UTI','Ceftriaxone',21,28),    
('ADD','Atomoxetine',22,6),      
('TBI','Ketamine',23,25),             
('Neuropathic Pain','Duloxetine',24,19),                  
('COPD','Pulmonary Rehab',25,24),      
('Overactive Bladder','Tolterodine',26,28),             
('Sports Injuries','Physiotherapy',27,27),                
('Psoriasis','Cyclosporine',28,6),                            
('RDS','Surfactant Therapy',29,33),
('COVID-19','Molnupiravir',31,5),   
('Gastritis','Omeprazole',32,18),      
('GAD','Escitalopram',33,2),    
('Sinusitis','Ibuprofen',34,13),     
('Burn Injuries','Silver Sulfadiazine',35,20),
('Osteoporosis','Alendronate',36,21),
('Depression','Sertraline',37,9),
('Myasthenia Gravis','Azathioprine',38,30),
('Otitis Media','Cefuroxime',39,15);

#Procedure Table
CREATE TABLE procedures(
code INT PRIMARY KEY,
name VARCHAR(150) NOT NULL,
cost INT NOT NULL
);

INSERT INTO procedures(code,name,cost)
VALUES
(1,'X-ray-Chest',1100),
(2,'X-ray-Abdomen',1250),
(3,'X-ray-Skull',950),
(4,'X-ray-Spine',1600),
(5,'MRI-Brain',5200),
(6,'MRI-Spine',6100),
(7,'CT Scan-Abdomen',3200),
(8,'CT Scan-Pelvis',3700),
(9,'Ultrasound-Abdomen',750),
(10,'Ultrasound-Obstetric',2600),
(11,'Mammogram',1300),
(12,'Bone Density Scan (DEXA)',1900),
(13,'PET-CT Scan',5100),
(14,'Fluoroscopy - Upper GI Series',7100),
(15,'Fluoroscopy - Barium Enema',4600),
(16,'Nuclear Medicine - Thyroid Scan',500),
(17,'Angiography - Cerebral',850),
(18,'Interventional Radiology - Biopsy',750),
(19,'X-ray-Extremities',350),
(20,'MRI-Knee',4200);

#DATA RETRIEVAL USING SELECT STATEMENT
SELECT * FROM physician;
SELECT * FROM affiliated_with;
SELECT * FROM department;
SELECT * FROM nurse;
SELECT * FROM patient;
SELECT * FROM patient_diagnosis;
SELECT * FROM procedures;

# DESC STATEMENT
DESC physician;
DESC affiliated_with;
DESC department;
DESC nurse;
DESC patient;
DESC patient_diagnosis;
DESC procedures;
