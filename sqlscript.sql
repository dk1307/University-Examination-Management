REM   Script: University Examination Management Database
REM   Basic database management project. It is manage the details of Examination, Branches, Marks, Courses, Session.

create table courses( 
cid varchar(4) primary key, 
cname char(20) not null, 
cyear number(1), 
check (cid like “C%”) 
);

create table courses( 
cid varchar(4) primary key, 
cname char(20) not null, 
cyear number(1), 
check (cid like 'C%') 
);

INSERT INTO COURSES VALUES 
('C01','ENGINEERING UGA','4');

INSERT INTO COURSES VALUES 
('C02','MBA','2');

INSERT INTO COURSES VALUES 
('C03','DENTAL','4');

INSERT INTO COURSES VALUES 
('C04','BCA','3');

INSERT INTO COURSES VALUES 
('C05','ENGINEERING PGA','2');

SELECT * FROM COURSES;

create table department( 
deid varchar(4) primary key, 
dname char(20) not null,	 
check (deid like 'D%'), 
);

create table department( 
deid varchar(4) primary key, 
dname char(20) not null,	 
check (deid like 'D%') 
);

DROP TABLE DEPARTMENT;

create table department( 
deid varchar(4) primary key, 
dname char(25) not null,	 
check (deid like 'D%') 
);

INSERT INTO DEPARTMENT VALUES 
('D01','INFORMATION TECHNOLOGY');

INSERT INTO DEPARTMENT VALUES 
('D02','COMPUTER');

INSERT INTO DEPARTMENT VALUES 
('D03','CIVIL');

INSERT INTO DEPARTMENT VALUES 
('D011','FOOD MANAGEMENT');

INSERT INTO DEPARTMENT VALUES 
('D012','EVENT MANAGEMENT');

INSERT INTO DEPARTMENT VALUES 
('D021','DENTAL RADIOLOGIST');

SELECT * FROM DEPARTMENT;

create table student( 
sid varchar(10) primary key, 
sname char(25) not null, 
deid varchar(4) not null, 
dob date, 
gender char(1), 
check (sid like 'S%'), 
foreign key(deid) references department(deid) 
);

INSERT INTO STUDENT VALUES 
('S01','DARSHAK KATHIRIYA','D01','13-07-2001','M');

create table student( 
sid varchar(10) primary key, 
sname char(25) not n 
INSERT INTO STUDENT VALUES 
('S01','DARSHAK KATHIRIYA','D01','13/07/2001','M');

INSERT INTO STUDENT VALUES 
('S01','DARSHAK KATHIRIYA','D01','13/07/2001','M');

INSERT INTO STUDENT VALUES 
('S01','DARSHAK KATHIRIYA','D01','13-JULY-2001','M');

INSERT INTO STUDENT VALUES 
('S02','NIHAL LIMBANI','D01','05-AUG-2000','M');

INSERT INTO STUDENT VALUES 
('S011','AYUSHI AJUDIYA','D02','10-JUNE-2000','F');

INSERT INTO STUDENT VALUES 
('S012','VARJESH VADI','D02','13-JULY-2000','M');

INSERT INTO STUDENT VALUES 
('S021','SRUSHTI PATEL','D011','20-JUNE-2002','F');

INSERT INTO STUDENT VALUES 
('S022','AARYA MAHETA','D011','30-JAN-2002','M');

INSERT INTO STUDENT VALUES 
('S031','DARSHAK KATHIRIYA','D012','01-FEB-2001','M');

INSERT INTO STUDENT VALUES 
('S032','ANJAN VASOYA','D012','15-JUNE-2001','M');

INSERT INTO STUDENT VALUES 
('S041','CHARMI BABARIYA','D021','05-JULY-2000','F');

INSERT INTO STUDENT VALUES 
('S042','ADITYA PATEL','D021','14-JULY-2000','M');

SELECT * FROM STUDENT;

create table professor( 
pid varchar(10) primary key, 
pname char(25) not null, 
p_cont number(10) not null, 
deid varchar(4) not null, 
check (pid like ‘P%’), 
foreign key(deid) references department(deid) 
);

create table professor( 
pid varchar(10) primary key, 
pname char(25) not null, 
p_cont number(10) not null, 
deid varchar(4) not null, 
check (pid like 'P%'), 
foreign key(deid) references department(deid) 
);

INSERT INTO PROFESSOR VALUES 
('P01','MMG SIR','9913010327','D01');

INSERT INTO PROFESSOR VALUES 
('P02','ANV MAM','9010919327','D01');

INSERT INTO PROFESSOR VALUES 
('P011','HBP SIR','8739190270','D02');

INSERT INTO PROFESSOR VALUES 
('P021','SRS SIR','9210909327','D011');

INSERT INTO PROFESSOR VALUES 
('P031','VBC MAM','9913912349','D012');

INSERT INTO PROFESSOR VALUES 
('P041','SKV SIR','9912123311','D021');

INSERT INTO PROFESSOR VALUES 
('P042','VRP SIR','8899778850','D021');

INSERT INTO PROFESSOR VALUES 
('P043','BDR MAM','9000050000','D021');

SELECT * FROM PROFESSOR;

create table attendance( 
sid varchar(10) not null, 
perc number(3) not null, 
lecatt number(3), 
labatt number (3), 
foreign key(sid) references student(sid) 
);

INSERT INTO ATTENDANCE VALUES 
('S01','99','100','98');

INSERT INTO ATTENDANCE VALUES 
('S02','95','95','100');

INSERT INTO ATTENDANCE VALUES 
('S011','85','80','90');

INSERT INTO ATTENDANCE VALUES 
('S012','90','92','88');

INSERT INTO ATTENDANCE VALUES 
('S021','90','90','100');

INSERT INTO ATTENDANCE VALUES 
('S022','80','84','76');

INSERT INTO ATTENDANCE VALUES 
('S031','95','100','95');

SELECT * FROM ATTENDANCE;

create table exam( 
examid varchar(10) primary key, 
sem number(1), 
marks number(3), 
subid varchar(4) not null, 
deid varchar(4) not null, 
check (examid like 'E%'), 
foreign key(deid) references department(deid) 
);

create table fees( 
fid varchar(10) primary key, 
sid varchar(10) not null, 
amount number not null, 
bankname char(25), 
check (fid like 'F%'), 
foreign key(sid) references student(sid) 
);

drop table fees;

create table fees( 
fid varchar(10) primary key, 
sid varchar(10) not null, 
amount number not null, 
amount_paid number , 
bankname char(25), 
check (fid like 'F%'), 
foreign key(sid) references student(sid) 
);

create table subject( 
subid varchar(4) primary key, 
subname char(15) not null, 
check (subid like 'SB%') 
);

INSERT INTO SUBJECT VALUES 
('SB01','DBMS');

INSERT INTO SUBJECT VALUES 
('SB02','DAA');

INSERT INTO SUBJECT VALUES 
('SB03','CJT');

INSERT INTO SUBJECT VALUES 
('SB11','TAFL');

INSERT INTO SUBJECT VALUES 
('SB12','MATHS1');

INSERT INTO SUBJECT VALUES 
('SB14','MATHS3');

INSERT INTO SUBJECT VALUES 
('SB05','FMA');

INSERT INTO SUBJECT VALUES 
('SB21','PC');

INSERT INTO SUBJECT VALUES 
('SB22','FOODRES');

SELECT * FROM SUBJECT;

INSERT INTO EXAM VALUES 
('E01','1','100','SB01','D01');

INSERT INTO EXAM VALUES 
('E02','4','36','SB22','D011');

INSERT INTO EXAM VALUES 
('E03','3','100','SB21','D011');

INSERT INTO EXAM VALUES 
('E04','1','100','SB11','D01');

INSERT INTO EXAM VALUES 
('E05','4','100','SB21','D021');

INSERT INTO EXAM VALUES 
('E06','2','30','SB21','D021');

INSERT INTO EXAM VALUES 
('E07','1','100','SB22','D012');

INSERT INTO EXAM VALUES 
('E08','2','100','SB11','D011');

INSERT INTO EXAM VALUES 
('E09','7','36','SB14','D01');

INSERT INTO EXAM VALUES 
('E10','6','100','SB12','D01');

SELECT * FROM EXAM;

create table supervisor( 
pid varchar(10) not null, 
examid varchar(10), 
all_time varchar(8) 
);

drop table supervisor;

create table supervisor( 
pid varchar(10) not null, 
examid varchar(10), 
roomno number(3), 
all_time varchar(8) 
);

INSERT INTO SUPERVISOR VALUES 
('P01','E01','505','06:30:00');

INSERT INTO SUPERVISOR VALUES 
('P011','E01','503','06:30:00');

INSERT INTO SUPERVISOR VALUES 
('P011','E07','008','14:30:00');

INSERT INTO SUPERVISOR VALUES 
('P031','E08','302','16:30:00');

INSERT INTO SUPERVISOR VALUES 
('P041','E09','305','12:00:00');

SELECT * FROM SUPERVISOR;

INSERT INTO ENROLLED_STD VALUES 
('S011','E06','SB012');

INSERT INTO ENROLLED_STD VALUES 
('S011','E06','SB02');

INSERT INTO ENROLLED_STD VALUES 
('S012','E07','SB02');

INSERT INTO ENROLLED_STD VALUES 
('S021','E04','SB03');

INSERT INTO ENROLLED_STD VALUES 
('S021','E01','SB012');

INSERT INTO ENROLLED_STD VALUES 
('S022','E01','SB01');

DROP TABLE ENROLLED_STD;

create table enrolled_std( 
sid varchar(10), 
examid varchar(10), 
subid varchar(4) 
);

INSERT INTO ENROLLED_STD VALUES 
('S01','E01','SB01');

INSERT INTO ENROLLED_STD VALUES 
('S01','E02','SB03');

INSERT INTO ENROLLED_STD VALUES 
('S01','E05','SB05');

INSERT INTO ENROLLED_STD VALUES 
('S011','E06','SB11');

INSERT INTO ENROLLED_STD VALUES 
('S011','E06','SB14');

INSERT INTO ENROLLED_STD VALUES 
('S012','E07','SB03');

INSERT INTO ENROLLED_STD VALUES 
('S021','E04','SB12');

INSERT INTO ENROLLED_STD VALUES 
('S021','E01','SB12');

INSERT INTO ENROLLED_STD VALUES 
('S022','E01','SB11');

INSERT INTO ENROLLED_STD VALUES 
('S02','E02','SB03');

create table routine( 
examid varchar(10), 
dt date, 
time varchar(8), 
roomno number(3) 
);

DROP TABLE ROUTINE;

create table routine( 
examid varchar(10), 
dt date, 
time varchar(8), 
);

create table routine( 
examid varchar(10), 
dt date, 
time varchar(8) 
);

INSERT INTO ROUTINE VALUES 
('E01','12-AUG-2020','06:30:00');

INSERT INTO ROUTINE VALUES 
('E02','14-AUG-2020','11:30:00');

INSERT INTO ROUTINE VALUES 
('E07','16-AUG-2020','14:30:00');

INSERT INTO ROUTINE VALUES 
('E08','17-AUG-2020','16:30:00');

INSERT INTO ROUTINE VALUES 
('E09','18-AUG-2020','12:00:00');

INSERT INTO ROUTINE VALUES 
('E03','19-AUG-2020','11:30:00');

SELECT * FROM ROUTINE;

drop table enrolled_std;

create table enrolled_std( 
sid varchar(10), 
examid varchar(10), 
subid varchar(4), 
roomno number(3) 
);

INSERT INTO ENROLLED_STD VALUES 
('S01','E01','SB01','505');

INSERT INTO ENROLLED_STD VALUES 
('S01','E02','SB03','505');

INSERT INTO ENROLLED_STD VALUES 
('S01','E05','SB05','503');

INSERT INTO ENROLLED_STD VALUES 
('S011','E06','SB11','008');

INSERT INTO ENROLLED_STD VALUES 
('S011','E06','SB14','302');

INSERT INTO ENROLLED_STD VALUES 
('S012','E07','SB03','302');

INSERT INTO ENROLLED_STD VALUES 
('S021','E04','SB12','302');

INSERT INTO ENROLLED_STD VALUES 
('S021','E01','SB12','505');

INSERT INTO ENROLLED_STD VALUES 
('S022','E01','SB11','305');

INSERT INTO ENROLLED_STD VALUES 
('S02','E02','SB03','305');

SELECT * FROM ENROLLED_STD;

create table result( 
examid varchar(10) not null, 
sid varchar(10) not null, 
spi number(2,2) not null, 
cpi number(2,2) not null, 
foreign key(sid) references student(sid), 
foreign key(examid) references exam(examid) 
);

INSERT INTO RESULT VALUES 
('E01','S01','9.1','8.7');

INSERT INTO RESULT VALUES 
('E01','S02','8.67','8.9');

drop table result;

create table result( 
examid varchar(10) not null, 
sid varchar(10) not null, 
spi number(4,2) not null, 
cpi number(4,2) not null, 
foreign key(sid) references student(sid), 
foreign key(examid) references exam(examid) 
);

INSERT INTO RESULT VALUES 
('E01','S01','9.10','8.70');

INSERT INTO RESULT VALUES 
('E01','S02','8.67','8.90');

INSERT INTO RESULT VALUES 
('E02','S021','7.1','8.0');

INSERT INTO RESULT VALUES 
('E03','S022','9.1','8.69');

INSERT INTO RESULT VALUES 
('E03','S031','7.66','8.10');

INSERT INTO RESULT VALUES 
('E04','S032','9.8','8.7');

INSERT INTO RESULT VALUES 
('E01','S011','9.6','9.8');

INSERT INTO RESULT VALUES 
('E01','S012','6.65','7.1');

SELECT * FROM RESULT;

create table loginuser( 
login_id varchar(10) primary key, 
login_role_id varchar(10) not null, 
user_password varchar(10,2) not null 
);

create table loginuser( 
login_id varchar(10) primary key, 
login_role_id varchar(10) not null, 
user_password varchar(10) not null 
);

INSERT INTO LOGINUSER(LOGIN_ID, LOGIN_ROLE_ID, USER_PASSWORD) VALUES 
(‘10AD1’,’A1’,’AD991379’), 
(‘10AD3’,’A1’,’A99179’), 
(‘18ITUOS097’,’S1’,’13/07/2001’), 
(‘18ITUOF051’,’S1’,’05/05/2001’), 
(‘15POO1’,’P1’,’PR0909’), 
(‘14P006’,’P1’,’P5590’);

INSERT INTO LOGINUSER (LOGIN_ID, LOGIN_ROLE_ID, USER_PASSWORD)  
VALUES (‘10AD1’,’A1’,’AD991379’), 
(‘10AD3’,’A1’,’A99179’), 
(‘18ITUOS097’,’S1’,’13/07/2001’), 
(‘18ITUOF051’,’S1’,’05/05/2001’), 
(‘15POO1’,’P1’,’PR0909’), 
(‘14P006’,’P1’,’P5590’);

INSERT INTO LOGINUSER (LOGIN_ID, LOGIN_ROLE_ID, USER_PASSWORD)  
VALUES (‘10AD1’,’A1’,’AD991379’), 
(‘10AD3’,’A1’,’A99179’), 
(‘18ITUOS097’,’S1’,’13DAR07’), 
(‘18ITUOF051’,’S1’,’05NIH05’), 
(‘15POO1’,’P1’,’PR0909’), 
(‘14P006’,’P1’,’P5590’);

INSERT INTO LOGINUSER(LOGIN_ID, LOGIN_ROLE_ID, USER_PASSWORD) VALUES 
('10AD1','A1','AD991379'), 
('10AD3','A1','A99179'), 
('18ITUOS097','S1','13/07/2001'), 
('18ITUOF051','S1','05/05/2001'), 
('15POO1','P1','PR0909'), 
('14P006','P1','P5590');

INSERT INTO LOGINUSER(LOGIN_ID, LOGIN_ROLE_ID, USER_PASSWORD) VALUES 
('10AD1','A1','AD991379');

INSERT INTO LOGINUSER(LOGIN_ID, LOGIN_ROLE_ID, USER_PASSWORD) VALUES 
('10AD3','A1','A99179');

INSERT INTO LOGINUSER(LOGIN_ID, LOGIN_ROLE_ID, USER_PASSWORD) VALUES 
('18ITUOS097','S1','13/07/2001');

INSERT INTO LOGINUSER(LOGIN_ID, LOGIN_ROLE_ID, USER_PASSWORD) VALUES 
('18ITUOF051','S1','05/05/2001');

INSERT INTO LOGINUSER(LOGIN_ID, LOGIN_ROLE_ID, USER_PASSWORD) VALUES 
('15POO1','P1','PR0909');

INSERT INTO LOGINUSER(LOGIN_ID, LOGIN_ROLE_ID, USER_PASSWORD) VALUES 
('14P006','P1','P5590');

SELECT * FROM LOGINUSER;

create table permission( 
per_role_id varchar(10), 
per_module varchar(10) 
);

INSERT INTO PERMISSION VALUES 
('A1','ALL PERMISSION INSERT VIEW DELETION GIVEN'), 
('S1','ALL PERMISSION VIEW GIVEN'), 
('P1','ALL PERMISSION VIEW DELETION GIVEN');

INSERT INTO PERMISSION VALUES 
('S1','ALL PERMISSION VIEW GIVEN');

INSERT INTO PERMISSION VALUES 
('P1','ALL PERMISSION VIEW DELETION GIVEN');

DELETE 'A1'FROM PERMISSION;

DROP TABLE PERMISSION;

create table permission( 
per_role_id varchar(10), 
per_module varchar(50) 
);

INSERT INTO PERMISSION VALUES 
('A1','ALL PERMISSION INSERT VIEW DELETION GIVEN');

INSERT INTO PERMISSION VALUES 
('S1','PERMISSION VIEW STUDENT GIVEN');

INSERT INTO PERMISSION VALUES 
('P1','PERMISSION VIEW SOME DATA GIVEN');

SELECT * FROM PERMISSION;

create table administrator( 
aid varchar(4) not null check (aid like 'A%'), 
a_name char(15) not null 
);

INSERT INTO ADMINISTRATOR VALUES 
('A03','DESAI RAMSIR');

INSERT INTO ADMINISTRATOR VALUES 
('A04','DESAI LAKHANSIR');

SELECT * FROM ADMINISTRATOR;

DROP TABLE ADMINISTRATOR;

create table administrator( 
aid varchar(4) not null check (aid like 'A%'), 
a_name char(20) not null 
);

INSERT INTO ADMINISTRATOR VALUES 
('A01','BHAVSHAR MAHESHSIR');

INSERT INTO ADMINISTRATOR VALUES 
('A02','PRAJAPATI RAMESHSIR');

create table fees( 
fid varchar(10) primary key, 
sid varchar(10) not null, 
amount number not null, 
amount_paid number , 
bankname char(25), 
check (fid like 'f%'), 
foreign key(sid) references student(sid) 
);

INSERT INTO FEES VALUES 
('F01','S01','10000','10000','HDFC');

INSERT INTO FEES VALUES 
('F02','S02','20000','20000','HDFC');

INSERT INTO FEES VALUES 
('F03','S021','10000','0','HDFC SFI');

INSERT INTO FEES VALUES 
('F04','S022','5000','5000','DENA BANK');

INSERT INTO FEES VALUES 
('F05','S031','10000','0','BOB');

INSERT INTO FEES VALUES 
('F06','S01','8000','8000','SBI');

INSERT INTO FEES VALUES 
('F07','S041','10000','10000','BOB');

SELECT * FROM FEES;

declare 
	cpi1 varchar(4,2); 
	total number; 
	procedure get_totalsid 
	is  
	begin 
		cpi1 := '9'; 
		select count(sid) into total from result where cpi>=cpi1; 
		dbms_output.put_line(total); 
	end get_totalsid; 
begin  
	get_totalsid(); 
end; 
/

Select sid, max(cpi) as "max_cpi" from result;

Select sid, max(cpi) as max_cpi from result;

Select sid from attendance where Labatt < 80;

Select sid from fees where amount_paid <amount;

Select sid, max(cpi) from result;

Select sid, max(cpi) from result group by sid;

Select sid, max(cpi) from result order by sid;

Select sid, max(cpi) from result order by cpi;

Select bankname,count(sid) from fees group by bankname;

Select examid,sem from exam where marks = 100;

Select examid,sid where spi between 7 and 9;

Select examid,sid from result where spi between 7 and 9;

Select sid,student.sname from student  
inner join result on result.sid=student.sid  
where cpi>8.5;

Select student.sid,student.sname from student  
inner join result on result.sid=student.sid  
where cpi>8.5;

select student.sname,min(perc) from student s  
inner join attendance a on s.sid=a.sid;

select sname,min(perc) from student s  
inner join attendance a on s.sid=a.sid;

select sname,min(perc) from student   
inner join attendance ;

select sname,min(perc) from student   
inner join attendance;

select sname,min(perc) from student   
inner join attendance group by sid;

select sname,min(perc) from student   
inner join attendance on student.sid=attendance.sid;

select sname,min(perc) from student   
inner join attendance on student.sid=attendance.sid group by sname;

select sname,min(perc) from student   
inner join attendance on student.sid=attendance.sid order by perc;

Select sid,sname from student 
 innerjoin fees where bank=HDFC;

Select sid,sname from student 
 innerjoin fees on student.sid=fees.sid where bank=HDFC;

Select sid,sname from student 
 innerjoin fees on student.sid=fees.sid where bank="HDFC";

Select sid,sname from student 
innerjoin fees on student.sid=fees.sid where bank=="HDFC";

Select sid,sname,fees.bank from student 
innerjoin fees on student.sid=fees.sid where bank=="HDFC";

Select sid,sname,fees.bank from student 
innerjoin fees on student.sid=fees.sid  
where bank=HDFC;

Select pname,pid from professor p  
innerjoin supervisor s on p.pid=s.pid where all_time between 6 and 12;

Select pname,pid from professor p  
innerjoin supervisor s on p.pid=s.pid  
where s.all_time between 6 and 12;

Select sid,sname from student 
 innerjoin fees where fees.bank='HDFC';

select sid,sname from student s 
innerjoin fees f on s.sid=f.sid 
where f.bank='HDFC';

select s.sid,s.sname from student s 
innerjoin fees f on s.sid=f.sid 
where f.bank='HDFC';

Select sname,min(perc) from student  
inner join attendance on student.sid=attendace.sid;

Select student.sname,attendance.min(perc) from student  
inner join attendance on student.sid=attendace.sid;

Select student.sname,attendance.min(perc) from student  
full join attendance on student.sid=attendace.sid;

Select student.sname,attendance.min(perc) from student  
full join attendance on student.sid=attendance.sid;

Select student.sname,min(perc) from student  
inner join attendance on student.sid=attendance.sid;

Select sname,min(perc) from student  
inner join attendance on student.sid=attendance.sid;

Select student.sname,student.perc from student  
inner join attendance on student.sid=attendance.sid;

Select student.sname,attendance.perc from student  
inner join attendance on student.sid=attendance.sid;

Select student.sid,student.sname from student  
 innerjoin fees on student.sid=fees.sid 
 where bank= 'HDFC';

Select student.sid,student.sname from student  
inner join fees on student.sid=fees.sid 
where bank= 'HDFC';

Select student.sid,student.sname from student  
inner join fees on student.sid=fees.sid 
where bankname= 'HDFC';

Select professor.pname,professor.pid from professor  
innerjoin supervisor on professor.pid=supervisor.pid  
where all_time between 6 and 12;

Select professor.pname,professor.pid from professor  
inner join supervisor on professor.pid=supervisor.pid  
where all_time between 6 and 12;

Select professor.pname,professor.pid from professor  
inner join supervisor on professor.pid=supervisor.pid  
where all_time between '6' and '12';

Select professor.pname,professor.pid from professor  
inner join supervisor on professor.pid=supervisor.pid  
where all_time between '06:00:00' and '12:00:00';

Select * from subject s inner join exam e  where e.sem=1;

Select * from subject s inner join exam e  where e.sem='1';

Select subject.* from subject inner join exam where sem='1';

Select subject.* from subject inner join exam on subject.subid=exam.subid where sem='1';

select sname from student where sid in(select sid from attendance where lecatt>=90);

declare 
	cpi1 varchar(4,2); 
	total number; 
	procedure get_totalsid 
	is  
	begin 
		cpi1 := '9.0'; 
		select count(sid) into total from result where cpi>=cpi1; 
		dbms_output.put_line(total); 
	end get_totalsid; 
begin  
	get_totalsid(); 
end; 
/

declare 
	cpi1 varchar(4,2); 
	total number; 
	procedure get_totalsid 
	is  
	begin 
		cpi1 := 9.0; 
		select count(sid) into total from result where cpi>=cpi1; 
		dbms_output.put_line(total); 
	end get_totalsid; 
begin  
	get_totalsid(); 
end; 
/

declare 
	cpi1 varchar(4,2); 
	total int(4); 
	procedure get_totalsid 
	is  
	begin 
		cpi1 := 9.0; 
		select count(sid) into total from result where cpi>=cpi1; 
		dbms_output.put_line(total); 
	end get_totalsid; 
begin  
	get_totalsid(); 
end; 
/

Create or replace function totalstu  
return number IS 
 total number(2):= 0; 
BEGIN 
    Select count(sid) into Total from result where examid=’E01’; 
    return total; 
END; 
/

Create or replace function totalstu  
return number IS 
 total number(2):= 0; 
BEGIN 
    Select count(sid) into Total from result where examid='E01'; 
    return total; 
END; 
/

Create or replace function totalstu  
return number IS 
 total number(2):= 0; 
BEGIN 
    Select count(sid) into Total from result where cpi>='9'; 
    return total; 
END; 
/

SET SERVEROUTPUT ON


DECLARE  
   c number(2);  
BEGIN  
   c :=totalstu ; 
   dbms_output.put_line('Total: ' || c);  
END;  
/

DECLARE 
    cid1 varchar2(2); 
    year1 number(2); 
    PROCEDURE Get_year 
    IS 
    BEGIN 
        cid1 := '&cid1'; 
        Select year into year1 from course where cid=cid1; 
        dbms_output.put_line( ' Total year is ' || year1 ); 
    END Get_year; 
BEGIN 
    Get_year(); 
END; 
/

DECLARE 
    cid1 varchar2(2); 
    year1 number(2); 
    PROCEDURE Get_year 
    IS 
    BEGIN 
        cid1 := '&cid1'; 
        Select year into year1 from courses where cid=cid1; 
        dbms_output.put_line( ' Total year is ' || year1 ); 
    END Get_year; 
BEGIN 
    Get_year(); 
END; 
/

DECLARE 
    cid1 varchar2(2); 
    year1 number(2); 
    PROCEDURE Get_year 
    IS 
    BEGIN 
        cid1 := '&cid1'; 
        Select cyear into year1 from courses where cid=cid1; 
        dbms_output.put_line( ' Total year is ' || year1 ); 
    END Get_year; 
BEGIN 
    Get_year(); 
END; 
/

DECLARE 
    cid1 varchar2(2); 
    year1 number(2); 
    PROCEDURE Get_year 
    IS 
    BEGIN 
        cid1 := C05; 
        Select cyear into year1 from courses where cid=cid1; 
        dbms_output.put_line( ' Total year is ' || year1 ); 
    END Get_year; 
BEGIN 
    Get_year(); 
END; 
/

DECLARE 
    cid1 varchar2(2); 
    year1 number(2); 
    PROCEDURE Get_year 
    IS 
    BEGIN 
        cid1 := 'C05'; 
        Select cyear into year1 from courses where cid=cid1; 
        dbms_output.put_line( ' Total year is ' || year1 ); 
    END Get_year; 
BEGIN 
    Get_year(); 
END; 
/

DECLARE 
    cid1 varchar2(3); 
    year1 number(2); 
    PROCEDURE Get_year 
    IS 
    BEGIN 
        cid1 := 'C05'; 
        Select cyear into year1 from courses where cid=cid1; 
        dbms_output.put_line( ' Total year is ' || year1 ); 
    END Get_year; 
BEGIN 
    Get_year(); 
END; 
/

Create or replace function totalstu  
return number IS 
 total number(2):= 0; 
BEGIN 
    Select count(sid) into Total from result where cpi>='8'; 
    return total; 
END; 
/

DECLARE  
   c number(2);  
BEGIN  
   c :=totalstu ; 
   dbms_output.put_line('Total student is: ' || c);  
END;  
/

