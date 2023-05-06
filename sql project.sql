create DATABASE Hospital_management;
use Hospital_management;

create table employee(
employee_id int,
employee_name varchar(50),
employee_dob date,
employee_address varchar(50),
employee_position varchar(50),
primary key(employee_id)
);

desc employee;
select * from employee;

insert into employee values(101,'Meridith Grey',date('1973-04-01'),'613 harper lane','Attending');
insert into employee values(102,'Alex karev',date('1975-07-12'),'seattle','Attending');
insert into employee values(103,'Cristina Yang',date('1980-07-20'),'seattle','Attending');
insert into employee values(104,'Derek Shepherd',date('1975-09-07'),'613 harper lane','Attending');
insert into employee values(105,'Owen Hunt',date('1973-06-01'),'georgetown','Attending');
insert into employee values(106,'Callie Torres',date('1976-07-04'),'west seattle','Attending');
insert into employee values(107,'Mark sloan',date('1975-10-22'),'columbia city','Attending');
insert into employee values(108,'Jackson Avery',date('1980-03-11'),'capital hill','Attending');
insert into employee values(109,'Arizona Robbins',date('1970-06-12'),'georgetown','Attending');
insert into employee values(110,'Teddy Altman',date('1970-04-25'),'beacon hill','Attending');
insert into employee values(111,'April kepner',date('1985-07-05'),'capital hill','Attending');
insert into employee values(112,'Lexi Grey',date('1992-11-23'),'atlantic','Resident');
insert into employee values(113,'Jo Wilson',date('1995-05-16'),'columbia city','Resident');
insert into employee values(114,'Andrew Deluca',date('1993-10-14'),'seattle','Resident');
insert into employee values(115,'Levi Smith',date('1996-08-17'),'Downtown','Resident');
insert into employee values(116,'Ben Warren',date('1985-01-27'),'cherry hill','Resident');
insert into employee values(117,'Atticus Lincon',date('1977-03-07'),'beacon hill','Attending');
insert into employee values(118,'Heather Brokes',date('1995-10-19'),'seattle','Resident');
insert into employee values(119,'Leah Murphy',date('1996-11-14'),'cherry hill','Resident');
insert into employee values(120,'Stephanie Edwards',date('1996-02-05'),'seattle','Resident');
insert into employee values(121,'Jules Milin',date('1997-08-11'),'leschi','Intern');
insert into employee values(122,'Benson Kwan',date('1998-05-28'),'west seattle','Intern');
insert into employee values(123,'Mika Yasuda',date('1997-03-07'),'downtown','Intern');
insert into employee values(124,'Simone Griff',date('1999-11-14'),'harper lane','Intern');
insert into employee values(125,'Lucas Adams',date('1995-08-22'),'columbia city','Intern');

create table department(
department_id int,
department_name varchar(50),
department_head int,
primary key(department_id),
foreign key(department_head) references employee(employee_id)
);

desc department;
select * from department;

insert into department(department_id,department_name,department_head)
values(201,'General surgery',101);
insert into department values(202,'Cardiothoracic',110); 
insert into department values(203,'Pediactric',109);
insert into department values(204,'Trauma',105);
insert into department values(205,'Neurology',104);
insert into department values(206,'Orthopedics',106);
insert into department values(207,'Plastic surgery',107);

ALTER TABLE employee
RENAME TO physician;

desc physician;
select*from physician;

alter table physician add column department int;
ALTER TABLE physician
ADD FOREIGN KEY (department) REFERENCES department(department_id);

update physician set department = 201 where employee_id = 101;
update physician set department = 203 where employee_id = 102;
update physician set department = 202 where employee_id = 103;
update physician set department = 205 where employee_id = 104;
update physician set department = 204 where employee_id = 105;
update physician set department = 206 where employee_id = 106;
update physician set department = 207 where employee_id = 107;
update physician set department = 206 where employee_id = 108;
update physician set department = 203 where employee_id = 109;
update physician set department = 202 where employee_id = 110;
update physician set department = 204 where employee_id = 111;
update physician set department = 205 where employee_id = 112;
update physician set department = 203 where employee_id = 113;
update physician set department = 201 where employee_id = 114;
update physician set department = 206 where employee_id = 115;
update physician set department = 204 where employee_id = 116;
update physician set department = 206 where employee_id = 117;
update physician set department = 205 where employee_id = 118;
update physician set department = 203 where employee_id = 119;
update physician set department = 202 where employee_id = 120;

create table Nurse(
employee_id int,
employee_name varchar(50),
employee_position varchar(50),
registered boolean,
primary key(employee_id)
);

desc Nurse;
select* from Nurse;

insert into Nurse values(1,'Eli Lyold','ICU',1);
insert into Nurse values(2,'Tyler Cristian','Cardiovascular Nurse',1);
insert into Nurse values(3,'Adele Webber','CNA',0);
insert into Nurse values(4,'Debbi Grace','Charge Nurse',0);
insert into Nurse values(5,'Dell parker','RN',1);
insert into Nurse values(6,'Olivia Harper','Pediatric Nurse',1);
insert into Nurse values(7,'Bokhee Baley','OR',1);
insert into Nurse values(8,'Rose Matt','OR',1);
insert into Nurse values(9,'Carolyn Shepherd','RN',1);
insert into Nurse values(10,'Frankie shell','CNA',0);
insert into Nurse values(11,'Timir Dhar','ICU',1);
insert into Nurse values(12,'Andrea Delia','OR',1);
insert into Nurse values(13,'Claudia Flores','Charge nurse',0);
insert into Nurse values(14,'Gloria Mally','Charge nurse',0);
insert into Nurse values(15,'Henry Dakota','Pediatric nurse',1);
insert into Nurse values(16,'James Janet','Cardiovascular nurse',1);
insert into Nurse values(17,'John Jacob','RNM',1);
insert into Nurse values(18,'Karen Milo','RN',1);
insert into Nurse values(19,'Kate kelly','RN',1);
insert into Nurse values(20,'Elisa mark','RN',1);

create TABLE room(
room_number int,
room_type varchar(50),
available boolean,
primary key(room_number)
);

desc room;
select* from room;


insert into room values(1,'single',1);
insert into room values(2,'single',0);
insert into room values(3,'single',0);
insert into room values(4,'double',1);
insert into room values(5,'double',1);
insert into room values(6,'double',0);
insert into room values(7,'single',0);
insert into room values(8,'single',0);
insert into room values(9,'double',0);
insert into room values(10,'double',0);


alter table room add column room_cost decimal(5.2);


update room set room_cost = 1000 where room_number = 1;
update room set room_cost = 1000 where room_number = 2;
update room set room_cost = 1000 where room_number = 3;
update room set room_cost = 500  where room_number = 4;
update room set room_cost = 500 where room_number = 5;
update room set room_cost = 500 where room_number = 6;
update room set room_cost = 1000 where room_number = 7;
update room set room_cost = 1000 where room_number = 8;
update room set room_cost = 500 where room_number = 9;
update room set room_cost = 500 where room_number = 10;


create table appointment(
appointment_id int,
patient_name varchar(50),
prep_nurse int,
physician int,
appointment_date date,
primary key(appointment_id),
foreign key(prep_nurse) references Nurse(employee_id),
foreign key(physician) references physician(employee_id)
);

desc appointment;
Select* from appointment;


insert into appointment values(1011,'Kim Allen',5,112,date('2021-10-06'));
insert into appointment values(1012,'Ruth Bennet',9,115,date('2021-10-06'));
insert into appointment values(1013,'Jade Bell',18,122,date('2021-10-07'));
insert into appointment values(1014,'Colin Adderson',20,113,date('2021-10-07'));
insert into appointment values(1015,'Emma Anderson',9,112,date('2021-10-07'));
insert into appointment values(1016,'Scott Becker',5,125,date('2021-10-08'));
insert into appointment values(1017,'Jamie Anders',18,115,date('2021-10-08'));
insert into appointment values(1018,'Maya bennett',20,113,date('2021-10-08'));
insert into appointment values(1019,'Lily scott',5,112,date('2021-10-09'));
insert into appointment values(1020,'Emily Jenner',9,125,date('2021-10-09'));
insert into appointment values(1021,'Kyle Booker',9,113,date('2021-10-09'));
insert into appointment values(1022,'Evan Arnold',5,122,date('2021-10-09'));
insert into appointment values(1023,'Shelly Bodan',18,112,date('2021-10-10'));
insert into appointment values(1024,'Asha Naik',20,115,date('2021-10-10'));
insert into appointment values(1025,'Angie Rick',20,115,date('2021-10-10'));


create table patient(
patient_id int,
appointment_id int,
patient_name varchar(50),
patient_age int,
patient_diagnosis varchar(50),
patient_address varchar(50),
patient_contact varchar(50),
primary key(patient_id),
foreign key(appointment_id) references appointment(appointment_id)
);

alter table patient add column patient_sex varchar(50);

desc patient;
select* from patient;

insert into patient values(301,1011,'Kim Allen',25,'Ulcerative colitis','downtown seattle','12063454567','Female');
insert into patient values(302,1012,'Ruth Bennet',27,'Appendicitis','cherry hill seattle','12063765408','Female');
insert into patient values(303,1013,'Jade Bell',14,'Chicken pox','capital seattle','12064628768','Male');
insert into patient values(304,1014,'Colin Anderson',35,'Gall stones','Atlantic seattle','12066384956','Male');
insert into patient values(305,1015,'Emma Anderson',31,'Blocked carotid artery','squire park seattle','12065437895','Female');
insert into patient values(306,1016,'Scott Becker',55,'Arthritis','First hill seattle','12060743587','Male');
insert into patient values(307,1017,'Jamie Anders',45,'Benign Brain Tumor','denny way seattle','12066387497','Male');
insert into patient values(308,1018,'Maya bennett',10,'Pneumonia','cherry hill seattle','12066598756','Female');
insert into patient values(309,1019,'Lily scott',32,' Skin wound','northgate seattle','12067645367','Female');
insert into patient values(310,1020,'Emily Jenner',21,'Appendicitis','mongolia seattle','12069834567','Female');
insert into patient values(311,1021,'Kyle Booker',60,'Hip fracture','ballard seattle','12067546869','Male');
insert into patient values(312,1022,'Evan Arnold',28,'Abdomen trauma ','lake city seattle','12066543213','Male');
insert into patient values(313,1023,'Shelly Bodan',30,'Severe skin infection','columbia seattle','12061256749','Female');
insert into patient values(314,1024,'Asha Naik',60,'Diarrhea','denny way seattle','12063765408','Female');
insert into patient values(315,1025,'Angie Rick',28,'Acute Bronchitis','atlantic seattle','12063666578','Female');


create table medical_procedure(
p_code int,
p_name varchar(50),
p_cost decimal(5.2),
primary key(p_code)
);

desc medical_procedure;
select* from medical_procedure;

insert into medical_procedure values(6655,'Partial Colectomy',3000);
insert into medical_procedure values(6656,'Appendectomy',4000);
insert into medical_procedure values(6657,'Cholecystectomy',9000);
insert into medical_procedure values(6658,'Carotid endarterectomy',12000);
insert into medical_procedure values(6659,'Neurosurgery',15000);
insert into medical_procedure values(6660,'Hip replacement',7000);
insert into medical_procedure values(6661,'Trauma surgery',9500);
insert into medical_procedure values(6662,'Skin graft',10000);
insert into medical_procedure values(6663,'Heart Bypass surgery',15000);
insert into medical_procedure values(6664,'Tonsillectomy',4000);

Create table surgical_patient(
Patient_id int,
p_code int,
surgery_schedule date,
physician int,
foreign key(patient_id) references patient(patient_id),
foreign key(p_code) references medical_procedure(p_code),
foreign key(physician) references physician(employee_id)
);

alter table surgical_patient add column nurse int;
ALTER TABLE surgical_patient
ADD FOREIGN KEY (nurse) REFERENCES Nurse(employee_id);

alter table surgical_patient add column completed varchar(50);

desc surgical_patient;
select* from surgical_patient;

insert into surgical_patient values(301,6655,'2021-10-12',101,7,'Yes');
insert into surgical_patient values(302,6656,'2021-10-12',111,8,'Yes');
insert into surgical_patient values(304,6657,'2021-10-12',101,7,'Yes');
insert into surgical_patient values(305,6658,'2021-10-12',103,12,'Yes');
insert into surgical_patient values(307,6659,'2021-10-13',104,7,'Yes');
insert into surgical_patient values(310,6656,'2021-10-13',113,8,'Yes');
insert into surgical_patient values(311,6660,'2021-10-14',106,8,'No');
insert into surgical_patient values(312,6661,'2021-10-14',105,7,'No');
insert into surgical_patient values(313,6662,'2021-10-15',107,12,'No');



show tables;

create table medication(
m_code int,
m_name varchar(50),
m_description varchar(50),
primary key(m_code)
);

desc medication;
select* from medication;

insert into medication values(801,'morphine','pain reducing');
insert into medication values(802,'hydrocone','pain reducing');
insert into medication values(803,'peritonitis','IV antibiotic');
insert into medication values(804,'ampicillin','antibiotic');
insert into medication values(805,'diphenhydramine','oral antihistamine');
insert into medication values(806,'Vicodin','pain reducing');
insert into medication values(807,'aspirin','reduce risk for stroke and heartattack');
insert into medication values(808,'prednisone',' reduce inflammation, pain,slow joint damage');
insert into medication values(809,'Dexamethasone','steriod to help brain from swelling');
insert into medication values(810,'amoxicillin','antibiotic');
insert into medication values(811,'amoxicillin-clavulanate','antibiotic');
insert into medication values(812,'ibuprofen','pain reducing');
insert into medication values(813,'Loperamide','Antidiarrhoeal ');
insert into medication values(814,'Loperamide','Antidiarrhoeal ');

DELETE FROM medication WHERE m_code =814;


create table treatment(
patient_id int,
physician_id int,
medication int,
nurse int,
foreign key(patient_id) references patient(patient_id),
foreign key(physician_id) references physician(employee_id),
foreign key(medication) references medication(m_code),
foreign key(nurse) references Nurse(employee_id)
);

desc treatment;

