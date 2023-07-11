drop table if exists Journeys
GO
drop table if exists Rockets
GO
Create table dbo.Rockets(RocketsId int not null IDENTITY PRIMARY KEY,
RocketName varchar (25) constraint U_Rocket_Name_Unique UNIQUE,
YearBuilt INT not null,
)
GO
Create table dbo.Journeys(JourneysId int not null IDENTITY PRIMARY KEY,
RocketsId int not null constraint F_Rockets_Journeys FOREIGN KEY REFERENCES Rockets(RocketsId),
 PlanetName varchar (25) not null ,
 DistanceTraveledInMillionsOfMiles int  not null,
 LaunchDate date not null,
 DateReachedDestination date not null,
 DateReturned DATE not NULL

)
GO