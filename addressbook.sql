drop Table UserLogin;
drop Table Relation;
drop Table Menu;
drop Table Family;
drop Table Party;
drop Table Designation;
drop Table Business;
drop Table CompanyType;
drop Table GroupMaster;
drop Table City;
drop Table State;	
drop Table BloodGroup;
drop Table Gender;



create Table Gender(
GenderId varchar(20) PRIMARY KEY,
GenderName varchar(10),
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date
);


create Table BloodGroup(
BloodGroupID number(10) PRIMARY KEY,
BloodGroup varchar(10),
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date
);


create Table State(
StateId varchar(20) PRIMARY KEY,
StateName varchar(30),
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date
);


create Table City(
CityId varchar(20) PRIMARY KEY,
CityName varchar(30),
StateId varchar(20),
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date
);


create Table GroupMaster(
GroupId number(20) PRIMARY KEY,
GroupName varchar(30),
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date
);


create Table CompanyType(
CompanyTypeId number(20) PRIMARY KEY, 
CompanyTypeName varchar(30),
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date
);

create Table Business(
BusinessId number(20) PRIMARY KEY,
BusinessName varchar(30),
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date
);


create Table Designation(
DesignationID number(20) PRIMARY KEY,
DesignationName varchar(30),
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date
);

create Table Party(
PartyId varchar(20) PRIMARY KEY,
PartyName varchar(30),
ContactPerson varchar(30), 
GenderId varchar(20),
DesignationID number(20),
GroupId number(20),
BusinessId number(20),
CompanyTypeId number(20),
OffAdd varchar(40),
OffCityId varchar(40),
OffStateId varchar(40),
OffPinCode number(10),
OffEmail varchar(40),
OffMobileNo number(10),
OffWebsite varchar(50),
OffPANNo varchar(30),
TANNo varchar(30),
ResAdd1 varchar(30),
ResCityId varchar(40),
ResStateId varchar(40),
ResPinCode number(10),
ResEmail varchar(40),
ResMobileNo number(10),
BloodGroupID number(10),
DateOfBirth date,
AnniversaryDate date,
RefrenceOne varchar(50),
RefrenceTwo varchar(50), 
Remarks varchar(30),
DefaultAddAsOffice varchar(50),
Active timestamp,
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date,
FOREIGN KEY (GenderId) references Gender(GenderId),
FOREIGN KEY (DesignationID) references Designation(DesignationID),
FOREIGN KEY (GroupId) references GroupMaster(GroupId),
FOREIGN KEY (BusinessId) references Business(BusinessId),
FOREIGN KEY (CompanyTypeId) references CompanyType(CompanyTypeId),
FOREIGN KEY (OffCityId) references City(CityId), 
FOREIGN KEY (OffStateId) references State(StateId),
FOREIGN KEY (BloodGroupID) references Bloodgroup(BloodGroupID),
FOREIGN KEY (ResCityId) references City(CityId),
FOREIGN KEY (ResStateId) references State(StateId) 
);


create Table Family(
FamilyId varchar(30) PRIMARY KEY,
PartyId varchar(20),
FamName varchar(30),
Gender varchar(10),
FatherHusbandName varchar(30),
Address1 varchar(40),
Address2 varchar(40),
StateName varchar(30),
CityName varchar(30),
PinCode number(8),
DateOfBirth date,
Relationship varchar(20),
Education varchar(30),
Religion varchar(20),
MobileNo number(10),
AltContactNo number(10),
Remarks varchar(30),
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date,
FOREIGN KEY (PartyId) references Party(PartyId)
);


create Table Menu(
MenuId number(10) PRIMARY KEY,
MenuDisplayName varchar(30),
ApplyYesNo varchar(30),
MenuName varchar(30)
);


create Table Relation(
RelationId varchar(20) PRIMARY KEY, 
RelationName varchar(30),
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date
);


create Table UserLogin(
LoginID varchar(20) PRIMARY KEY,
LoginPW varchar(20),
UserName varchar(30),
Active varchar(30),
UserEmailid varchar(30),
UserMobileNo number(10),
LoginStartTime timestamp,
LoginEndTime timestamp,
CreatedBy varchar(30),
CreatedDate date,
ModifiedBy varchar(30),
ModifiedDate date
);


--Insert in Gender Table

INSERT INTO Gender (GenderId, GenderName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('M', 'Male', 'Admin', SYSDATE, 'Admin', SYSDATE);

INSERT INTO Gender (GenderId, GenderName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('F', 'Female', 'Admin', SYSDATE, 'Admin', SYSDATE);

--Insert in BloodGroupTable

INSERT INTO BloodGroup (BloodGroupID, BloodGroup, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES (1, 'A+', 'Admin', SYSDATE, 'Admin', SYSDATE);

INSERT INTO BloodGroup (BloodGroupID, BloodGroup, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES (2, 'O-', 'Admin', SYSDATE, 'Admin', SYSDATE);

--Insert in State Table

INSERT INTO State (StateId, StateName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('CA', 'California', 'Admin', SYSDATE, 'Admin', SYSDATE);

INSERT INTO State (StateId, StateName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('NY', 'New York', 'Admin', SYSDATE, 'Admin', SYSDATE);

--Insert in City Table

INSERT INTO City (CityId, CityName, StateId, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('LA', 'Los Angeles', 'CA', 'Admin', SYSDATE, 'Admin', SYSDATE);

INSERT INTO City (CityId, CityName, StateId, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('NYC', 'New York City', 'NY', 'Admin', SYSDATE, 'Admin', SYSDATE);

--Insert in GroupMaster Table

INSERT INTO GroupMaster (GroupId, GroupName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES (1, 'Group A', 'Admin', SYSDATE, 'Admin', SYSDATE);

INSERT INTO GroupMaster (GroupId, GroupName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES (2, 'Group B', 'Admin', SYSDATE, 'Admin', SYSDATE);

--Insert in CompanyType Table

INSERT INTO CompanyType (CompanyTypeId, CompanyTypeName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES (1, 'Public', 'Admin', SYSDATE, 'Admin', SYSDATE);

INSERT INTO CompanyType (CompanyTypeId, CompanyTypeName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES (2, 'Private', 'Admin', SYSDATE, 'Admin', SYSDATE);

--Insert in Business Table

INSERT INTO Business (BusinessId, BusinessName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES (1, 'Retail', 'Admin', SYSDATE, 'Admin', SYSDATE);

INSERT INTO Business (BusinessId, BusinessName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES (2, 'Technology', 'Admin', SYSDATE, 'Admin', SYSDATE);

--Insert in Designation Table

INSERT INTO Designation (DesignationID, DesignationName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES (1, 'Manager', 'Admin', SYSDATE, 'Admin', SYSDATE);

INSERT INTO Designation (DesignationID, DesignationName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES (2, 'Engineer', 'Admin', SYSDATE, 'Admin', SYSDATE);


--Insert in Party Table

INSERT INTO Party (PartyId, PartyName, ContactPerson, GenderId, DesignationID, GroupId, BusinessId, CompanyTypeId,
                   OffAdd, OffCityId, OffStateId, OffPinCode, OffEmail, OffMobileNo, OffWebsite, OffPANNo, TANNo,
                   ResAdd1, ResCityId, ResStateId, ResPinCode, ResEmail, ResMobileNo, BloodGroupID, DateOfBirth,
                   AnniversaryDate, RefrenceOne, RefrenceTwo, Remarks, DefaultAddAsOffice, Active, CreatedBy,
                   CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('P1', 'ABC Company', 'John Doe', 'M', 1, 1, 1, 1,
        '123 Main St', 'LA', 'CA', 12345, 'contact@abc.com', 9876543210, 'www.abc.com', 'ABCPAN123', 'ABCTAN456',
        '456 Elm St', 'NYC', 'NY', 54321, 'contact@abc.com', 8765432109, 1, TO_DATE('1990-01-15', 'YYYY-MM-DD'),
        TO_DATE('2010-05-20', 'YYYY-MM-DD'), 'Ref1', 'Ref2', 'Additional remarks', 'Yes', SYSTIMESTAMP, 'Admin',
        SYSDATE, 'Admin', SYSDATE);

INSERT INTO Party (PartyId, PartyName, ContactPerson, GenderId, DesignationID, GroupId, BusinessId, CompanyTypeId,
                   OffAdd, OffCityId, OffStateId, OffPinCode, OffEmail, OffMobileNo, OffWebsite, OffPANNo, TANNo,
                   ResAdd1, ResCityId, ResStateId, ResPinCode, ResEmail, ResMobileNo, BloodGroupID, DateOfBirth,
                   AnniversaryDate, RefrenceOne, RefrenceTwo, Remarks, DefaultAddAsOffice, Active, CreatedBy,
                   CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('P2', 'XYZ Corporation', 'Jane Smith', 'F', 2, 2, 2, 2,
        '789 Elm St', 'NYC', 'NY', 54321, 'contact@xyz.com', 8765432109, 'www.xyz.com', 'XYZPAN123', 'XYZTAN456',
        '123 Maple St', 'LA', 'CA', 12345, 'contact@xyz.com', 9876543210, 2, TO_DATE('1985-08-10', 'YYYY-MM-DD'),
        TO_DATE('2007-09-25', 'YYYY-MM-DD'), 'Ref3', 'Ref4', 'More remarks', 'No', SYSTIMESTAMP, 'Admin',
        SYSDATE, 'Admin', SYSDATE);

--Insert in Family Table

INSERT INTO Family (FamilyId, PartyId, FamName, Gender, FatherHusbandName, Address1, Address2, StateName, CityName,
                   PinCode, DateOfBirth, Relationship, Education, Religion, MobileNo, AltContactNo, Remarks,
                   CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('F1', 'P1', 'Doe', 'M', 'John Doe', '456 Elm St', 'Apt 101', 'CA', 'LA', 12345,
        TO_DATE('1995-03-12', 'YYYY-MM-DD'), 'Son', 'Engineering', 'Christian', 9876543211, 8765432100, 'Family member',
        'Admin', SYSDATE, 'Admin', SYSDATE);

INSERT INTO Family (FamilyId, PartyId, FamName, Gender, FatherHusbandName, Address1, Address2, StateName, CityName,
                   PinCode, DateOfBirth, Relationship, Education, Religion, MobileNo, AltContactNo, Remarks,
                   CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('F2', 'P1', 'Doe', 'F', 'Jane Doe', '456 Elm St', 'Apt 101', 'CA', 'LA', 12345,
        TO_DATE('1998-08-20', 'YYYY-MM-DD'), 'Daughter', 'Medicine', 'Christian', 9876543212, 8765432101, 'Family member',
        'Admin', SYSDATE, 'Admin', SYSDATE);

--Insert in Menu Table

INSERT INTO Menu (MenuId, MenuDisplayName, ApplyYesNo, MenuName)
VALUES (1, 'Dashboard', 'Yes', 'dashboard');

INSERT INTO Menu (MenuId, MenuDisplayName, ApplyYesNo, MenuName)
VALUES (2, 'Reports', 'Yes', 'reports');

--Insert in Relation Table

INSERT INTO Relation (RelationId, RelationName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('R1', 'Father', 'Admin', SYSDATE, 'Admin', SYSDATE);

INSERT INTO Relation (RelationId, RelationName, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('R2', 'Mother', 'Admin', SYSDATE, 'Admin', SYSDATE);

--Insert in UserLogin Table

INSERT INTO UserLogin (LoginID, LoginPW, UserName, Active, UserEmailid, UserMobileNo, LoginStartTime, LoginEndTime,
                       CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('user1', 'pass123', 'JohnDoe', 'Yes', 'john.doe@example.com', 9876543210,
        TO_TIMESTAMP('2023-08-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        TO_TIMESTAMP('2023-08-04 17:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        'Admin', SYSDATE, 'Admin', SYSDATE);

INSERT INTO UserLogin (LoginID, LoginPW, UserName, Active, UserEmailid, UserMobileNo, LoginStartTime, LoginEndTime,
                       CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
VALUES ('user2', 'pass456', 'JaneSmith', 'Yes', 'jane.smith@example.com', 8765432109,
        TO_TIMESTAMP('2023-08-04 09:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        TO_TIMESTAMP('2023-08-04 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        'Admin', SYSDATE, 'Admin', SYSDATE);
