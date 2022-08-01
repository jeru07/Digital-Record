Create Table Documents
(
user_id number(20),
document_name varchar(30),
document_id number(20),
issue_date date,
Valid_till date,
issued_by varchar(50),	
notes varchar2(500),
document_image BLOB,
foreign key(user_id) references users(user_id)
);
---------------------------------------------------------
Create Table Users
(
USER_ID number(20),
USER_NAME VARCHAR2(40),
USER_PASSWORD   VARCHAR2(40), 
FIRST_NAME  VARCHAR2(50),
LAST_NAME   VARCHAR2(50), 
DOB     DATE,      
E_MAIL VARCHAR2(50), 
PHONE_NUMBER   NUMBER(10),   
GENDER   VARCHAR2(10) ,
ADDRESS  VARCHAR2(50) ,
primary key(USER_ID)
);