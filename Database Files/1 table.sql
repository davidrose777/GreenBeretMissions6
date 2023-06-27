use GreenBeretOpsDB
GO

drop table if exists Mission
GO

create table dbo.Mission(
    MissionId int not null identity primary key,
    FirstName varchar(35) not null constraint Mission_FirstName_cannot_be_blank check(FirstName > ''),
    LastName varchar(35) not null constraint Mission_LastName_cannot_be_blank check(LastName > ''),
    YearSoldierBorn int not null constraint Mission_YearSoldierBorn_must_be_between_1776_and_current_date check(YearSoldierBorn between 1776 and getdate()),
    Medal varchar(100) not null constraint Mission_Medal_must_be_bronze_gold_or_silver check(Medal in ('bronze', 'silver', 'gold')),
    MissionStatus as case 
                            when Medal = 'Gold' then 1
                            when Medal = 'Silver' then 2
                            when Medal = 'Bronze' then 3 
      end persisted,
    MissionImportanceNum int not null constraint Mission_MissionImportance_must_be_between_5_and_29 check(MissionImportanceNum between 5 and 29),
    MissionImportance as case
                            when MissionImportanceNum between 5 and 10 then 3
                            when MissionImportanceNum between 11 and 20 then 2
                            when MissionImportanceNum between 21 and 37 then 1
     end persisted,
    MissionImportanceDesc as case
                            when MissionImportanceNum between 5 and 10 then 'Priority'
                            when MissionImportanceNum between 11 and 20 then 'Top Priority'
                            when MissionImportanceNum between 21 and 37 then 'Immediate Action'
     end persisted,     
    MissionType varchar(100) not null constraint Mission_MissionType_cannot_be_blank check(MissionType > ''),
    Country varchar(60) not null constraint Mission_Country_cannot_be_blank check(Country > ''),
    Yarborough int not null constraint Mission_Yarborough_must_be_between_2006_and_2023 check(Yarborough between 2006 and 2023),
    DogTag as concat(LastName, FirstName, ' ', left(YearSoldierBorn, 3), '-', SUBSTRING(cast(YearSoldierBorn as varchar), 4, 1), left(YarBorough, 1), '-', right(Yarborough, 3), '0 Blood Type Green Beret')
)
