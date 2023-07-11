drop table if exists ExecOrdersPresidents
drop table if exists Presidents1
drop table if exists InfoPresidentParty1 
Go
		create table dbo.InfoPresidentParty1(
		InfoPresidentParty1Id int not null identity primary key,
		Party1 VARCHAR (30),
		YearEstablished INT not null, 
		ColorOfParty VARCHAR (20) not NULL


		) 
--AS Amazing job! 100% Tip: There is no need to repeat the table name twice in the constraint.
--drop table if exists President
go
		Create Table dbo.Presidents1(
		Presidents1Id int not null identity (1000,1) primary key,
		InfoPresidentParty1Id int not null constraint F_InfoPresidentParty1Id_Presidents FOREIGN KEY REFERENCES InfoPresidentParty1(InfoPresidentParty1Id),
		Num int not null constraint u_presidents1_num unique,
		constraint Presidents1_Num_num_cannot_be_blank check(Num<>''), 
		FirstName varchar(100) not null constraint Presidents1_Firstname_firstname_cannot_be_blank check(FirstName<>''), 
		LastName varchar(100) not null constraint Presidents1_Lastname_lastname_cannot_be_blank check(LastName<>''),
		DateBorn DATE not null ,
		DateDied DATE  null ,
		TermStart int not null constraint ck_Presidents1_Termstart_No_term_start_before_1776 check (TermStart>=1776),
        constraint ck_Presidents1_Termstart_presidents_age_minimum_at_termstart_is_35 check(Termstart-year(DateBorn)>=35),
		TermEnd int  null,
         constraint ck_Presidents1_Termstart_term_start_must_be_before_term_end check (TermEnd>=TermStart)
	)
go

alter table Presidents1
drop column if exists ageofpresident
GO
alter table Presidents1 add AgeOfPresident AS
year(DateDied)-year(DateBorn)

alter table Presidents1
drop column if exists YEARSSERVED
GO
alter table Presidents1 add YEARSSERVED AS
TermEnd-TermStart
go
Create Table dbo.ExecOrdersPresidents(
		ExecOrdersPresidentsID int not null identity (1000,1) primary key,
		OrderNum int not null constraint ExecOrdersPresidents_OrderNum_cannot_be_less_than_zero check(OrderNum>0),
        Presidents1Id int not null constraint F_Presidents1_ExecOrdersPresidents FOREIGN KEY REFERENCES Presidents1(Presidents1Id),
        VolumeNum int not null constraint ExecOrdersPresidents_VolumeNum_cannot_be_less_than_zero check(VolumeNum>0), 
		NameCode varchar (10) constraint ExecOrdersPresidents_NameCode_cannot_be_blank check(NameCode<>''),
		PageNum INT not null constraint ExecOrdersPresidents_PageNum_unique unique, 
		YearOrdered int not null constraint ck_ExecOrdersPresidents_YearOrdered_cannot_be_less_than_zero check (YearOrdered>0),
        NameOfOrder varchar(300) not null constraint ExecOrdersPresidents_NameOfOrder_cannot_be_blank check(NameOfOrder<>''),
		WasOrderUpheld BIT not null  constraint ExecOrdersPresidents_WasOrderUpheld_cannot_be_blank check(WasOrderUpheld<>''),
		DateRecordCreated DATE  not null constraint ExecOrdersPresidents_DateRecordCreated_cannot_be_before_6_28_1941 check(DateRecordCreated>='1-1-1863'),
		constraint u_ExecOrdersPresidents_Order_num Unique(OrderNum),
        )
go


		






  












  